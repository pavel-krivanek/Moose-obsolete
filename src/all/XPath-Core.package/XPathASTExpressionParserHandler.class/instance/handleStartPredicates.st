handling - predicates
handleStartPredicates
	self topOperatorNode isStep
		ifFalse: [
			self pushOperatorNode:
				(XPathASTFilterExpressionNode expression:
					self popExpressionNode)]