allOutgoingInvocations
testReferencedNamespaces
	self
		assert:
			((self namespace1InteractedReferencerReferee
				queryAllOutgoingInvocations atScope: FAMIXNamespace)
				equalsTo:
					(Set
						with: self namespace2FullReferee
						with: self namespace3ReferencerReferee
						with: self namespace1InteractedReferencerReferee))