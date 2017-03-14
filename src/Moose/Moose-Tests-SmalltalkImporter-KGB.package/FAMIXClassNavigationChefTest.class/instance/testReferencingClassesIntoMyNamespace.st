allIncomingInvocations
testReferencingClassesIntoMyNamespace
	self assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations atTypeScope withinMyNamespace isEmpty.
	self assert: self c13FullRefereeInSideOutSide queryAllIncomingInvocations atTypeScope withinMyNamespace size equals: 2.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryAllIncomingInvocations atTypeScope withinMyNamespace
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						add: self c13FullRefereeInSideOutSide;
						yourself))