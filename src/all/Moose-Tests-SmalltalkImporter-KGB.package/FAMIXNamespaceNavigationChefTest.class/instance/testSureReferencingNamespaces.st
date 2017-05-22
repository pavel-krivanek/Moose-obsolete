sureIncomingInvocations
testSureReferencingNamespaces
	self
		assert:
			((self namespace2FullReferee querySureIncomingInvocations
				atScope: FAMIXNamespace)
				equalsTo:
					(Set
						with: self namespace1InteractedReferencerReferee
						with: self namespace2FullReferee
						with: self namespace3ReferencerReferee))