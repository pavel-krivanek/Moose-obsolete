instance creation
newFunctionCallForBoolean: aBoolean
	"the XPath string of a boolean is 'true' or 'false', the function names"
	^ XPathASTFunctionCallNode name: aBoolean asXPathString