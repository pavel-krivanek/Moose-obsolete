allDependencies
testClientClasses
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FAMIXType) size equals: 2.
	self
		assert: ((self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FAMIXType) equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide with: self c15FullReferencerOutSide)).
	self assert: (self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FAMIXType) size equals: 3.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FAMIXType)
				equalsTo: (Set with: self c1FullReferencerOutSide with: self c6FullReferencerInSideOutSide with: self c14ReferencerOutSideRefereeOutSide))