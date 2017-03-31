formatting
formatBeforePI: aPIWriter
	(self writer hadActiveTagWriter
		and: [self writer hasActiveTagWriter not])
		ifTrue: [self writeLineBreak]