formatting
formatAfterPI: aPIWriter
	self writer hadActiveTagWriter
		ifFalse: [self writeLineBreak]