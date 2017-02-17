sureIncomingInvocations
testSureReferencingClassesIntoMyNamespace
	self
		assert: self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations atTypeScope withinMyNamespace isEmpty.
	self
		assert: self c13FullRefereeInSideOutSide querySureIncomingInvocations atTypeScope withinMyNamespace size
		equals: 2.
	self
		assert:
			(self c13FullRefereeInSideOutSide querySureIncomingInvocations atTypeScope withinMyNamespace
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						add: self c13FullRefereeInSideOutSide;
						yourself))