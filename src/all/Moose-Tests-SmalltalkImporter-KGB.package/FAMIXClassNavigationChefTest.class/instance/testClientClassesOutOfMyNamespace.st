allDependencies
testClientClassesOutOfMyNamespace
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FAMIXType) outOfMyNamespace size equals: 2.
	self
		assert: ((self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FAMIXType) outOfMyNamespace equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide with: self c15FullReferencerOutSide)).
	self assert: (self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FAMIXType) outOfMyNamespace size equals: 1.
	self assert: ((self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FAMIXType) outOfMyNamespace equalsTo: (Set with: self c14ReferencerOutSideRefereeOutSide))