MooseKGB-TestFamix3-allDependencies
testClientClassesInto
	self assert: (((self namespace2FullReferee queryAllIncoming atScope: FAMIXType) withinNamespace: self namespace3ReferencerReferee) equalsTo: (Set with: self c14ReferencerOutSideRefereeOutSide))