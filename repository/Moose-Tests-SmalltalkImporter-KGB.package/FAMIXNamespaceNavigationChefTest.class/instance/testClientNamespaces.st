allDependencies
testClientNamespaces 
	 
	self 
		assert: 
			(self namespace2FullReferee  queryAllIncomingAssociations atNamespaceScope  
				equalsTo: 
					(Set 
						with: self namespace1InteractedReferencerReferee 
						with: self namespace3ReferencerReferee
						with: self namespace2FullReferee))