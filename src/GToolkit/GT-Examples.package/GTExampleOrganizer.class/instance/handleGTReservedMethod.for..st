private-maintenance
handleGTReservedMethod: aCompiledMethod for: announcement
	aCompiledMethod isGTReservedMethod ifFalse: [ ^ self ].
	self removeExamplesOfClass: aCompiledMethod methodClass theNonMetaClass name for: announcement