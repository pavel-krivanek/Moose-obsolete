allDependencies
testClientClassesOutOfMyPackage
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FAMIXType) outOfMyPackage size equals: 2.
	self assert: ((self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FAMIXType) outOfMyPackage equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide with: self c15FullReferencerOutSide)).
	self assert: (self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FAMIXType) outOfMyPackage size equals: 3.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FAMIXType) outOfMyPackage
				equalsTo: (Set with: self c1FullReferencerOutSide with: self c6FullReferencerInSideOutSide with: self c14ReferencerOutSideRefereeOutSide))