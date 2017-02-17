sureIncomingInvocations
testSureReferencingNamespaces
	self assert: self c19FullRefereeOutSide querySureIncomingInvocations atNamespaceScope size equals: 3.
	self
		assert:
			(self c19FullRefereeOutSide querySureIncomingInvocations atNamespaceScope
				equalsTo:
					(Set
						with: self namespace4FullReferencer
						with: self namespace5InteractedReferencer
						with: self namespace6InteractedReferee))