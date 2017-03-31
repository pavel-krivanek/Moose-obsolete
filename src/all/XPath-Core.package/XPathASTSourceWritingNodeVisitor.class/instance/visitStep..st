visiting - steps
visitStep: aStep
	(self previousStep isNull
		and: [aStep parent isRelativeLocationPath])
		ifFalse: [self emit: $/].
	self
		emitAll: aStep axisName;
		emitAll: '::'.
	super visitStep: aStep.
	^ aStep.