inheritance
testInheritedNamespaces 
	 
	self 
		assert: 
			(self namespace1InteractedReferencerReferee queryOutgoingInheritances atNamespaceScope   
				equalsTo: 
					(Set 
						with: self namespace2FullReferee 
						with: self namespaceSmalltalkCore
						with: self namespace1InteractedReferencerReferee))