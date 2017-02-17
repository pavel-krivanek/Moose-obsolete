visiting - location paths
visitLocationPath: aLocationPath
	aLocationPath hasSteps
		ifTrue: [| oldStepIterator steps |
			oldStepIterator := stepIterator.
			stepIterator := XPathASTNodeVisitorIterator on: aLocationPath steps.
			steps := OrderedCollection new: aLocationPath totalSteps.
			[stepIterator atEnd]
				whileFalse: [| step |
					(step := stepIterator visitNextWith: self) isNull
						ifFalse: [steps addLast: step]].
			aLocationPath steps: steps.
			stepIterator := oldStepIterator].
	^ aLocationPath.