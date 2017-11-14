allDependencies
testClientClassesInto
	| p1 p2 |
	p1 := self packageP1FullReferencer.
	p2 := self packageP2InteractedReferencerReferee.
	self assert: ((self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FAMIXType) withinPackage: p2) size equals: 1.
	self assert: (((self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FAMIXType) withinPackage: p2) equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide)).
	self assert: ((self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FAMIXType) withinNamespace: self namespace1InteractedReferencerReferee) size equals: 1.
	self
		assert:
			(((self c14ReferencerOutSideRefereeOutSide queryAllIncoming atScope: FAMIXType) withinNamespace: self namespace1InteractedReferencerReferee) equalsTo: (Set with: self c2ReferencerOutSideRefereeInSide)).
	self assert: (((self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FAMIXType) withinPackage: p1) equalsTo: (Set with: self c1FullReferencerOutSide)).
	self assert: ((self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FAMIXType) withinNamespace: self namespace1InteractedReferencerReferee) size equals: 2.
	self
		assert:
			(((self c3ReferencerInSideRefereeOutSide queryAllIncoming atScope: FAMIXType) withinNamespace: self namespace1InteractedReferencerReferee)
				equalsTo: (Set with: self c1FullReferencerOutSide with: self c6FullReferencerInSideOutSide))