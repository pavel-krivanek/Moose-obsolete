visiting - operators
visitAdditionExpression: anAdditionExpression
	"traverse in post-order"
	super visitAdditionExpression: anAdditionExpression.

	"addition of literals can be evaluated at compile time"
	anAdditionExpression hasNonLiteralExpression
		ifTrue: [^ anAdditionExpression]
		ifFalse: [
			^ XPathASTNumberLiteralNode number:
				anAdditionExpression expression asXPathNumber +
					anAdditionExpression otherExpression asXPathNumber].