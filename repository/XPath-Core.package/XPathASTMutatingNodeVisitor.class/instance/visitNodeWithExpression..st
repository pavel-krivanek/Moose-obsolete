visiting
visitNodeWithExpression: aNodeWithExpression
	aNodeWithExpression expression:
		(aNodeWithExpression expression acceptNodeVisitor: self).
	^ aNodeWithExpression.