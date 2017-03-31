allDependencies
testClientClassesIntoMyPackage
	self assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations withoutSelfLoops atTypeScope withinMyPackage size equals: 0.
	self assert: self c13FullRefereeInSideOutSide queryAllIncomingAssociations atTypeScope withinMyPackage size equals: 2.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryAllIncomingAssociations atTypeScope withinMyPackage
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						add: self c13FullRefereeInSideOutSide;
						yourself))