/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the  "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include "FunctionGenerateID.hpp"



#include <xalanc/XalanDOM/XalanDocument.hpp>



#include <xalanc/PlatformSupport/DOMStringHelper.hpp>
#include <xalanc/PlatformSupport/XalanMessageLoader.hpp>



#include <xalanc/XPath/NodeRefListBase.hpp>
#include <xalanc/XPath/XObjectFactory.hpp>



namespace XALAN_CPP_NAMESPACE {



const XalanDOMString    FunctionGenerateID::s_emptyString(XalanMemMgrs::getDummyMemMgr());



FunctionGenerateID::FunctionGenerateID() :
    Function()
{
}



FunctionGenerateID::~FunctionGenerateID()
{
}



// Append the suffix to the provided string.
inline void
getSuffix(
        const XalanNode*    theNode,
        XalanDOMString&     theResult)
{
    assert(theNode != 0);

    // We're assuming here that each node has an implementation with a 
    // unique address that we can convert into a string...
    PointerToDOMString(theNode->getOwnerDocument(), theResult);

    theResult.append(1, XalanUnicode::charLetter_N);

    PointerToDOMString(theNode, theResult);
}



XObjectPtr
FunctionGenerateID::execute(
            XPathExecutionContext&  executionContext,
            XalanNode*              context,
            const Locator*          locator) const
{
    if (context == 0)
    {
        const GetCachedString   theGuard(executionContext);

        executionContext.problem(
            XPathExecutionContext::eXPath,
            XPathExecutionContext::eError,
            XalanMessageLoader::getMessage(
                theGuard.get(),
                XalanMessages::FunctionRequiresNonNullContextNode_1Param,
                "generate-id()"),
            locator,
            context);

        return XObjectPtr();
    }
    else
    {
        GetCachedString     theID(executionContext);

        theID.get() = XalanUnicode::charLetter_N;

        getSuffix(context, theID.get());

        return executionContext.getXObjectFactory().createString(theID);
    }
}



XObjectPtr
FunctionGenerateID::execute(
            XPathExecutionContext&  executionContext,
            XalanNode*              /* context */,
            const XObjectPtr        arg1,
            const Locator*          locator) const
{
    assert(arg1.null() == false);

    const NodeRefListBase&  theNodeList = arg1->nodeset();

    if (theNodeList.getLength() == 0)
    {
        return executionContext.getXObjectFactory().createStringReference(s_emptyString);
    }
    else
    {
        return execute(executionContext, theNodeList.item(0), locator);
    }
}



FunctionGenerateID*
FunctionGenerateID::clone(MemoryManager&    theManager) const
{
    return XalanCopyConstruct(theManager, *this);
}



const XalanDOMString&
FunctionGenerateID::getError(XalanDOMString&    theResult) const
{
    return XalanMessageLoader::getMessage(
                theResult,
                XalanMessages::FunctionTakesZeroOrOneArg_1Param,
                "generate-id");
}



}
