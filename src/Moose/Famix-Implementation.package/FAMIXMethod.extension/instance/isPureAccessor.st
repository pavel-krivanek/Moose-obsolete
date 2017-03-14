*Famix-Implementation
isPureAccessor
	^self isGetter
		or: [self isSetter
		or: [self privateState propertyAt: #isPureAccessor ifAbsent: [false]]]