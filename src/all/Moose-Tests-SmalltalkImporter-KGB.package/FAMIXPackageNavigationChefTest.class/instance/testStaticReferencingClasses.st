references
testStaticReferencingClasses
	| p5 |
	p5 := self packageP5FullReferee.
	self
		assert:
			((p5 queryIncomingReferences atScope: FAMIXType)
				equalsTo:
					(Set
						with: self c1FullReferencerOutSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self c6FullReferencerInSideOutSide
						with: self c11FullRefereeOutSide))