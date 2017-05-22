sureIncomingInvocations
testSureReferencingNamespaces
	self
		assert:
			(self c19FullRefereeOutSide querySureIncomingInvocations
				atScope: FAMIXNamespace) size
		equals: 3.
	self
		assert:
			((self c19FullRefereeOutSide querySureIncomingInvocations
				atScope: FAMIXNamespace)
				equalsTo:
					(Set
						with: self namespace4FullReferencer
						with: self namespace5InteractedReferencer
						with: self namespace6InteractedReferee))