allDependencies
testProviderNamespaces 
	 
	self 
		assert: 
			(self namespace1InteractedReferencerReferee queryAllOutgoingAssociations atNamespaceScope  
				equalsTo: 
					(Set 
						with: self namespace2FullReferee 
						with: self namespace3ReferencerReferee 
						with: self namespaceSmalltalkCore
						with: self namespace1InteractedReferencerReferee ))