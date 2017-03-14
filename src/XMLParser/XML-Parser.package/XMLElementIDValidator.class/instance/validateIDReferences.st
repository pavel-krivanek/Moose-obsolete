validating
validateIDReferences
	self idReferences do: [:each |
		(self ids includes: each)
			ifFalse: [self errorUnknownIDReference: each]]