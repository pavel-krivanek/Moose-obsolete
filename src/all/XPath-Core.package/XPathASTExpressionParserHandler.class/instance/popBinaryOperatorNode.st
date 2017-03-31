private
popBinaryOperatorNode
	^ self pushExpressionNode:
		(self popOperatorNode otherExpression: self popExpressionNode)