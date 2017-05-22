allDependencies
testProviderClassesInto
	| invos refs inh |
	self
		assert:
			(((self namespace1InteractedReferencerReferee
				queryAllOutgoingAssociations atScope: FAMIXType)
				withinNamespace: self namespace2FullReferee)
				equalsTo:
					(Set
						with: self c11FullRefereeOutSide
						with: self c13FullRefereeInSideOutSide)).
	self
		assert: 15
		equals:
			(self namespace1InteractedReferencerReferee
				queryAllOutgoingAssociations
				withinNamespace: self namespace2FullReferee) size.
	invos := (self namespace1InteractedReferencerReferee
		queryAllOutgoingAssociations
		withinNamespace: self namespace2FullReferee)
		select: [ :dep | dep isKindOf: FAMIXInvocation ].
	self assert: 10 equals: invos size.
	refs := (self namespace1InteractedReferencerReferee
		queryAllOutgoingAssociations
		withinNamespace: self namespace2FullReferee)
		select: [ :dep | dep isKindOf: FAMIXReference ].
	self assert: 4 equals: refs size.
	inh := (self namespace1InteractedReferencerReferee
		queryAllOutgoingAssociations
		withinNamespace: self namespace2FullReferee)
		select: [ :dep | dep isKindOf: FAMIXInheritance ].
	self assert: 1 equals: inh size.
	self
		assert:
			(((self namespace1InteractedReferencerReferee
				queryAllOutgoingAssociations
				withinNamespace: self namespace2FullReferee) atScope: FAMIXType)
				equalsTo:
					(Set
						with: self c11FullRefereeOutSide
						with: self c13FullRefereeInSideOutSide))