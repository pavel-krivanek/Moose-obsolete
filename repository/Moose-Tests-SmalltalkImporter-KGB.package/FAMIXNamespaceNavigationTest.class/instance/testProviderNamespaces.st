MooseKGB-TestFamix3-allDependencies
testProviderNamespaces 
	 
	self 
		assert: 
			(self namespace1InteractedReferencerReferee providerNamespaces 
				equalsTo: 
					(Set 
						with: self namespace2FullReferee 
						with: self namespace3ReferencerReferee 
						with: self namespaceSmalltalkCore))