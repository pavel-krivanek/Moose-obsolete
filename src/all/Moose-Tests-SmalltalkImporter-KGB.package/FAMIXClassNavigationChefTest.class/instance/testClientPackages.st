allDependencies
testClientPackages
	| p2 p8 |
	p2 := self packageP2InteractedReferencerReferee.
	p8 := self packageP8FullReferencer.
	self assert: (self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations withoutSelfLoops atScope: FAMIXPackage) size equals: 2.
	self assert: ((self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations withoutSelfLoops atScope: FAMIXPackage) equalsTo: (Set with: p2 with: p8))