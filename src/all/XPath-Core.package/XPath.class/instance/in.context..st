evaluating
in: aNode context: aContext
	"Evaluates the XPath expression with aNode as the initial context node
	and aContext as the controlling XPathContext object"

	^ self compiledExpression
		evaluateInNode: aNode
		withContext: aContext