allDependencies
testClientClassesIntoMyNamespace
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FAMIXType) withinMyNamespace size equals: 0.
	self assert: (self c13FullRefereeInSideOutSide queryAllIncoming atScope: FAMIXType) withinMyNamespace size equals: 2.
	self assert: ((self c13FullRefereeInSideOutSide queryAllIncoming atScope: FAMIXType) withinMyNamespace equalsTo: (Set with: self c12FullReferencerInSide with: self c13FullRefereeInSideOutSide))