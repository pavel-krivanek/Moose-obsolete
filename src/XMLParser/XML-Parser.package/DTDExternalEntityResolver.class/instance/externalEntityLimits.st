configuring
externalEntityLimits
	^ externalEntityLimits ifNil: [externalEntityLimits := DTDExternalEntityLimits new]