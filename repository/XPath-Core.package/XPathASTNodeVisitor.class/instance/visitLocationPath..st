visiting - location paths
visitLocationPath: aLocationPath
	aLocationPath hasSteps
		ifTrue: [| oldStepIterator |
			oldStepIterator := stepIterator.
			stepIterator := XPathASTNodeVisitorIterator on: aLocationPath steps.
			[stepIterator atEnd]
				whileFalse: [stepIterator visitNextWith: self].
			stepIterator := oldStepIterator].
	^ aLocationPath.