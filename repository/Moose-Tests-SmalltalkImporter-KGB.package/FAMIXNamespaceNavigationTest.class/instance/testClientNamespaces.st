MooseKGB-TestFamix3-allDependencies
testClientNamespaces 
	 
	self 
		assert: 
			(self namespace2FullReferee clientNamespaces 
				equalsTo: 
					(Set 
						with: self namespace1InteractedReferencerReferee 
						with: self namespace3ReferencerReferee))