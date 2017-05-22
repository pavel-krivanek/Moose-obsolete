sureOutgoingInvocations
testSureReferencedNamespaces
	self
		assert:
			(self c6FullReferencerInSideOutSide querySureOutgoingInvocations
				atScope: FAMIXNamespace) size
		equals: 1.
	self
		assert:
			((self c6FullReferencerInSideOutSide querySureOutgoingInvocations
				atScope: FAMIXNamespace)
				equalsTo:
					(Set new
						add: self namespace2FullReferee;
						yourself))