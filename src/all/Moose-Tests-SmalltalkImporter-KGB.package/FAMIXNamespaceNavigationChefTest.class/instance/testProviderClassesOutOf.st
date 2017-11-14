allDependencies
testProviderClassesOutOf
	| invos refs inh acc |
	self
		assert:
			(((self namespace1InteractedReferencerReferee queryAllOutgoing atScope: FAMIXType) outOfPackage: self packageP5FullReferee)
				equalsTo:
					((Set
						with: self c13FullRefereeInSideOutSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self cObject
						with: self c6FullReferencerInSideOutSide
						with: self c5ReferencerInSideRefereeInSide
						with: self c7FullRefereeInSide)
						union:
							(Set
								with: self c2ReferencerOutSideRefereeInSide
								with: self c3ReferencerInSideRefereeOutSide
								with: self c4FullRefereeInSide
								with: self c1FullReferencerOutSide))).
	self assert: 55 equals: (self namespace1InteractedReferencerReferee queryAllOutgoing outOfPackage: self packageP5FullReferee) size.
	invos := (self namespace1InteractedReferencerReferee queryAllOutgoing outOfPackage: self packageP5FullReferee) select: [ :dep | dep isKindOf: FAMIXInvocation ].
	self assert: 29 equals: invos size.
	refs := (self namespace1InteractedReferencerReferee queryAllOutgoing outOfPackage: self packageP5FullReferee) select: [ :dep | dep isKindOf: FAMIXReference ].
	self assert: 10 equals: refs size.
	inh := (self namespace1InteractedReferencerReferee queryAllOutgoing outOfPackage: self packageP5FullReferee) select: [ :dep | dep isKindOf: FAMIXInheritance ].
	self assert: 7 equals: inh size.
	acc := (self namespace1InteractedReferencerReferee queryAllOutgoing outOfPackage: self packageP5FullReferee) select: [ :dep | dep isKindOf: FAMIXAccess ].
	self assert: 9 equals: acc size.
	self
		assert:
			(((self namespace1InteractedReferencerReferee queryAllOutgoing outOfPackage: self packageP5FullReferee) atScope: FAMIXType)
				equalsTo:
					((Set
						with: self c13FullRefereeInSideOutSide
						with: self c14ReferencerOutSideRefereeOutSide
						with: self cObject
						with: self c6FullReferencerInSideOutSide
						with: self c5ReferencerInSideRefereeInSide
						with: self c7FullRefereeInSide)
						union:
							(Set
								with: self c2ReferencerOutSideRefereeInSide
								with: self c3ReferencerInSideRefereeOutSide
								with: self c4FullRefereeInSide
								with: self c1FullReferencerOutSide)))