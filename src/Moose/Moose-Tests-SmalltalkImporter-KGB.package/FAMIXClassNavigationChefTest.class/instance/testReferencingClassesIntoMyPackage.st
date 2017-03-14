allIncomingInvocations
testReferencingClassesIntoMyPackage
	self assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations atTypeScope withinMyPackage isEmpty.
	self assert: self c13FullRefereeInSideOutSide queryAllIncomingInvocations atTypeScope withinMyPackage size equals: 2.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryAllIncomingInvocations atTypeScope withinMyPackage
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						add: self c13FullRefereeInSideOutSide;
						yourself))