evaluating
in: aNode
	"Evaluates the XPath expression with aNode as the initial context node"

	^ self
		in: aNode
		context: self contextClass new