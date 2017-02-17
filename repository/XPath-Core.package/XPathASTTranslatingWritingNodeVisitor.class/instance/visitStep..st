visiting - steps
visitStep: aStep
	super visitStep: aStep.
	self emit: $).
	^ aStep.