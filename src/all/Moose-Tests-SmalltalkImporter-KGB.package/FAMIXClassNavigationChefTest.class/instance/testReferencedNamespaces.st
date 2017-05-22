allOutgoingInvocations
testReferencedNamespaces
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FAMIXNamespace) size
		equals: 2.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations
				atScope: FAMIXNamespace)
				equalsTo:
					(Set new
						add: self namespace1InteractedReferencerReferee;
						add: self namespace2FullReferee;
						yourself))