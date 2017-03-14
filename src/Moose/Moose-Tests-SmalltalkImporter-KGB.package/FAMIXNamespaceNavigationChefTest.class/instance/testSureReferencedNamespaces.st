sureOutgoingInvocations
testSureReferencedNamespaces 
	 
	self 
		assert: 
			(self namespace1InteractedReferencerReferee  querySureOutgoingInvocations atNamespaceScope 
				equalsTo: 
					(Set 
						with: self namespace2FullReferee 
						with: self namespace3ReferencerReferee
						with: self namespace1InteractedReferencerReferee))