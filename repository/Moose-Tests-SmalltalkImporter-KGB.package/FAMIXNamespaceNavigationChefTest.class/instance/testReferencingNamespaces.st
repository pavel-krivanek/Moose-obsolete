allIncomingInvocations
testReferencingNamespaces
	self assert: (self namespace2FullReferee queryAllIncomingInvocations atNamespaceScope
		equalsTo: (Set 
				with: self namespace1InteractedReferencerReferee
				with: self namespace3ReferencerReferee
				with: self namespace2FullReferee))