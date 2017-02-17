private
pushBinaryOperatorNode: aBinaryOperatorNode
	^ self pushOperatorNode:
		(aBinaryOperatorNode expression: self popExpressionNode)