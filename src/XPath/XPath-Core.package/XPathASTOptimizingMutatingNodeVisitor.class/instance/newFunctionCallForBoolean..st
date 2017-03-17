instance creation
newFunctionCallForBoolean: aBoolean
	"the XPath string value of a boolean is 'true' or 'false', the names of
	the true() and false() functions, and since these are inlined by the
	translator, we can safely infer their type"
	^ (XPathASTFunctionCallNode name: aBoolean asXPathString)
		type: XPathBooleanValueType new