references
testStaticReferencedClasses
	| p8 |
	p8 := self packageP8FullReferencer.
	self
		assert:
			((p8 queryOutgoingReferences atScope: FAMIXType)
				equalsTo:
					(Set
						with: self c18FullRefereeInSideOutSide
						with: self c19FullRefereeOutSide))