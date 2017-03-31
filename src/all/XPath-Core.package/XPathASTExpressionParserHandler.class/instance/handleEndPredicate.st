handling - predicates
handleEndPredicate
	self topOperatorNode addPredicate:
		(XPathASTPredicateNode expression: self popExpressionNode)