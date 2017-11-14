evaluating
for: anExpressionSourceString in: aNode context: aContext
	"Evaluates the XPath expression anExpressionSourceString with aNode
	as the initial context node and aContext as the controlling
	XPathContext object"

	^ (self for: anExpressionSourceString)
		in: aNode
		context: aContext