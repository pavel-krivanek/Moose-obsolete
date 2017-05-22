allIncomingInvocations
testReferencingNamespaces
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXNamespace) size
		equals: 2.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryAllIncomingInvocations
				atScope: FAMIXNamespace)
				equalsTo:
					(Set new
						add: self namespace3ReferencerReferee;
						add: self namespace1InteractedReferencerReferee;
						yourself))