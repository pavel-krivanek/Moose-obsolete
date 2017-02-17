allDependencies
testClientClassesIntoMyNamespace
	self
		assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations withoutSelfLoops atTypeScope withinMyNamespace size equals: 0.
	self
		assert: self c13FullRefereeInSideOutSide queryAllIncomingAssociations atTypeScope withinMyNamespace size
		equals: 2.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryAllIncomingAssociations atTypeScope withinMyNamespace
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						add: self c13FullRefereeInSideOutSide;
						yourself))