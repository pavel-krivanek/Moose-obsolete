MooseKGB-TestFamix3-allDependencies
testProviderClassesInto
	self
		assert:
			(((self namespace1InteractedReferencerReferee
				queryAllOutgoingAssociations atScope: FAMIXType)
				withinNamespace: self namespace2FullReferee)
				equalsTo:
					(Set
						with: self c11FullRefereeOutSide
						with: self c13FullRefereeInSideOutSide))