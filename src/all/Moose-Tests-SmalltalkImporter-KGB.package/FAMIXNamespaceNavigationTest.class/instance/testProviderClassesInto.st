MooseKGB-TestFamix3-allDependencies
testProviderClassesInto
	self
		assert:
			(((self namespace1InteractedReferencerReferee queryAllOutgoing atScope: FAMIXType) withinNamespace: self namespace2FullReferee)
				equalsTo: (Set with: self c11FullRefereeOutSide with: self c13FullRefereeInSideOutSide))