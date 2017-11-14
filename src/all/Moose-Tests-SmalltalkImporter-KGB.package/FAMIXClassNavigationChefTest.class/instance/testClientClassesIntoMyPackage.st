allDependencies
testClientClassesIntoMyPackage
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncoming withoutSelfLoops atScope: FAMIXType) withinMyPackage size equals: 0.
	self assert: (self c13FullRefereeInSideOutSide queryAllIncoming atScope: FAMIXType) withinMyPackage size equals: 2.
	self assert: ((self c13FullRefereeInSideOutSide queryAllIncoming atScope: FAMIXType) withinMyPackage equalsTo: (Set with: self c12FullReferencerInSide with: self c13FullRefereeInSideOutSide))