accessing
absentSetElement
	^ absentState
		ifNil: [absentState := XMLNFAMatchingState matcher: 'absent']