handling - location paths
handleEndStep
	| step |

	step := self popOperatorNode.
	self topOperatorNode addStep: step.