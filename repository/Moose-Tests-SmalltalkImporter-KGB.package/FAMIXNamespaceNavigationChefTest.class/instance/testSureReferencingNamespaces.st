sureIncomingInvocations
testSureReferencingNamespaces 
	 
	self 
		assert: 
			(self namespace2FullReferee querySureIncomingInvocations atNamespaceScope 
				equalsTo: 
					(Set 
						with: self namespace1InteractedReferencerReferee
						with: self namespace2FullReferee  
						with: self namespace3ReferencerReferee))