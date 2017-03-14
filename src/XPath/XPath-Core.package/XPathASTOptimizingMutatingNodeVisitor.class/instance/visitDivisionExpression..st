visiting - operators
visitDivisionExpression: aDivisionExpression
	"traverse in post-order"
	super visitDivisionExpression: aDivisionExpression.

	"division of literals can be evaluated at compile time"
	aDivisionExpression hasNonLiteralExpression
		ifTrue: [^ aDivisionExpression]
		ifFalse: [
			^ XPathASTNumberLiteralNode number:
				(aDivisionExpression expression asXPathNumber xPathDivision:
					aDivisionExpression otherExpression asXPathNumber)].