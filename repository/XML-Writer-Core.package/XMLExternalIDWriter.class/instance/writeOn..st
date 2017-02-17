writing
writeOn: aWriter
	self hasPublicID
		ifTrue: [self writePublicExternalIDOn: aWriter]
		ifFalse: [
			self hasSystemID
				ifTrue: [self writeSystemExternalIDOn: aWriter]]