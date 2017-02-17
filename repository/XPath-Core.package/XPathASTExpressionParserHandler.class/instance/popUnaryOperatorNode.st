private
popUnaryOperatorNode
	^ self pushExpressionNode:
		(self popOperatorNode expression: self popExpressionNode)