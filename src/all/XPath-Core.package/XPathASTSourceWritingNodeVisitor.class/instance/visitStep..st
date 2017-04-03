visiting - steps
visitStep: aStep
	(self previousStep isNull
		and: [aStep parent isRelativeLocationPath])
		ifFalse: [self emit: $/].
	self emitAxisName: aStep axisName.
	super visitStep: aStep.
	^ aStep.