sureIncomingInvocations
testSureReferencingClassesIntoMyPackage
	self assert: self c14ReferencerOutSideRefereeOutSide querySureIncomingInvocations atTypeScope withinMyPackage isEmpty.
	self assert: self c13FullRefereeInSideOutSide querySureIncomingInvocations atTypeScope withinMyPackage size equals: 2.
	self
		assert:
			(self c13FullRefereeInSideOutSide querySureIncomingInvocations atTypeScope withinMyPackage
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						add: self c13FullRefereeInSideOutSide;
						yourself))