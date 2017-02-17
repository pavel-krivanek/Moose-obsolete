visiting
visitNodeWithOtherExpression: aNodeWithOtherExpression
	self visitNodeWithExpression: aNodeWithOtherExpression.
	aNodeWithOtherExpression otherExpression:
		(aNodeWithOtherExpression otherExpression acceptNodeVisitor: self).
	^ aNodeWithOtherExpression.