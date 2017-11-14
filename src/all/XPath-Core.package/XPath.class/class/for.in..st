evaluating
for: anExpressionSourceString in: aNode
	"Evaluates the XPath expression anExpressionSourceString with aNode
	as the initial context node"

	^ (self for: anExpressionSourceString)
		in: aNode
