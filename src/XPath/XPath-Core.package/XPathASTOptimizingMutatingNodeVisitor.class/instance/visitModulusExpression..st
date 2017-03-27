visiting - operators
visitModulusExpression: aModulusExpression
	"traverse in post-order"
	super visitModulusExpression: aModulusExpression.

	"the modulus of literals can be evaluated at compile time"
	aModulusExpression hasNonLiteralExpression
		ifTrue: [^ aModulusExpression]
		ifFalse: [
			^ XPathASTNumberLiteralNode number:
				(aModulusExpression expression asXPathNumber xpathModulus:
					aModulusExpression otherExpression asXPathNumber)]