visiting - steps
visitStep: aStep
	aStep nodeTest acceptNodeVisitor: self.
	^ self visitFilterable: aStep.