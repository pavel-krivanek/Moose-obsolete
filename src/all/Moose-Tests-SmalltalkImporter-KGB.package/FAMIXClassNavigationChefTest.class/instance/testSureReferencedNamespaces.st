sureOutgoingInvocations
testSureReferencedNamespaces
	self assert: self c6FullReferencerInSideOutSide querySureOutgoingInvocations atNamespaceScope size equals: 1.
	self
		assert:
			(self c6FullReferencerInSideOutSide querySureOutgoingInvocations atNamespaceScope
				equalsTo:
					(Set new
						add: self namespace2FullReferee;
						yourself))