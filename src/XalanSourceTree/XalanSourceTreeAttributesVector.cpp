/*
 * The Apache Software License, Version 1.1
 *
 *
 * Copyright (c) 1999-2000 The Apache Software Foundation.  All rights 
 * reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer. 
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * 3. The end-user documentation included with the redistribution,
 *    if any, must include the following acknowledgment:  
 *       "This product includes software developed by the
 *        Apache Software Foundation (http://www.apache.org/)."
 *    Alternately, this acknowledgment may appear in the software itself,
 *    if and wherever such third-party acknowledgments normally appear.
 *
 * 4. The names "Xalan" and "Apache Software Foundation" must
 *    not be used to endorse or promote products derived from this
 *    software without prior written permission. For written 
 *    permission, please contact apache@apache.org.
 *
 * 5. Products derived from this software may not be called "Apache",
 *    nor may "Apache" appear in their name, without prior written
 *    permission of the Apache Software Foundation.
 *
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
 * ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
 * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 * ====================================================================
 *
 * This software consists of voluntary contributions made by many
 * individuals on behalf of the Apache Software Foundation and was
 * originally based on software copyright (c) 1999, International
 * Business Machines, Inc., http://www.ibm.com.  For more
 * information on the Apache Software Foundation, please see
 * <http://www.apache.org/>.
 */
#include "XalanSourceTreeAttributesVector.hpp"



#include <cassert>



XalanSourceTreeAttributesVector::XalanSourceTreeAttributesVector(size_type	theBlockSize) :
	m_list(),
	m_blockSize(theBlockSize),
	m_lastEntryFound(0)
{
}



XalanSourceTreeAttributesVector::~XalanSourceTreeAttributesVector()
{
}



XalanSourceTreeAttr**
XalanSourceTreeAttributesVector::allocate(size_type		theCount)
{
	// Handle the case of theCount being greater than the block size first...
	if (theCount >= m_blockSize)
	{
		return createEntry(theCount, theCount);
	}
	else
	{
		ListEntryType*	theEntry =
			findEntry(theCount);

		// Did we find a slot?
		if (theEntry == 0)
		{
			// Nope, create a new one...
            return createEntry(m_blockSize, theCount);;
		}
		else
		{
			// The address we want is that of the first free element in the
			// vector...
			XalanSourceTreeAttr** const		thePointer =
				&*theEntry->second.begin() + (theEntry->second.size() - theEntry->first);

			// Resize the vector to the appropriate size...
			theEntry->first -= theCount;

			return thePointer;
		}
	}
}



XalanSourceTreeAttr**
XalanSourceTreeAttributesVector::createEntry(
			size_type	theBlockSize,
			size_type	theCount)
{
	assert(theBlockSize >= theCount);

	// Push on a new entry.  The entry has no open space,
	// since it's greater than our block size...
	m_list.push_back(ListEntryType(0, VectorType()));

	// Get the new entry...
	ListEntryType&	theNewEntry = m_list.back();

	// Resize the vector to the appropriate size...
	theNewEntry.second.resize(theBlockSize, VectorType::value_type(0));

	// Set the number of free spaces accordingly...
	theNewEntry.first = theBlockSize - theCount;

    if (theNewEntry.first != 0)
    {
        m_lastEntryFound = &theNewEntry;
    }

	// Return a pointer to the beginning of the allocated memory...
	return &*theNewEntry.second.begin();
}




XalanSourceTreeAttributesVector::ListEntryType*
XalanSourceTreeAttributesVector::findEntry(size_type	theCount)
{
	// Search for an entry that has some free space.

	if (m_lastEntryFound != 0 && m_lastEntryFound->first >= theCount)
	{
		return m_lastEntryFound;
	}
	else
	{
		const ListType::iterator	theEnd = m_list.end();
		ListType::iterator	theCurrent = m_list.begin();

		ListEntryType*	theEntry = 0;

		while(theCurrent != theEnd)
		{
			// We're looking for the best fit, so
			// if the free space and the count we're
			// looking for are equal, that's pretty
			// much the best we can do...
			if ((*theCurrent).first == theCount)
			{
				theEntry = &*theCurrent;

				break;
			}
			else if ((*theCurrent).first >= theCount)
			{
				// If we haven't found anything yet, the first
				// entry we find that's large enough becomes
				// our best fit.
				//
				// Otherwise, we'll assume that a smaller
				// slot is a better fit, though I may be
				// wrong about this...
				if (theEntry == 0 ||
					(*theCurrent).first < theEntry->first)
				{
					// Nope, so this becomes our best-fit so far.
					theEntry = &*theCurrent;
				}

				++theCurrent;
			}
			else
			{
				// Won't fit, so just continue...
				++theCurrent;
			}
		}

		m_lastEntryFound = theEntry;

		return theEntry;
	}
}