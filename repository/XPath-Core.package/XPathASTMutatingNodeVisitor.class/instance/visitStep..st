visiting - steps
visitStep: aStep
	aStep nodeTest: (aStep nodeTest acceptNodeVisitor: self).
	^ self visitFilterable: aStep.