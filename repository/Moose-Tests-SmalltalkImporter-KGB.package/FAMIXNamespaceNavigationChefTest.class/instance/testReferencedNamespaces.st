allOutgoingInvocations
testReferencedNamespaces
	self assert: (self namespace1InteractedReferencerReferee queryAllOutgoingInvocations atNamespaceScope equalsTo: (Set 
				with: self namespace2FullReferee
				with: self namespace3ReferencerReferee
				with: self namespace1InteractedReferencerReferee))