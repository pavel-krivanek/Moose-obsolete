allDependencies
testClientClasses
	self assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations withoutSelfLoops atTypeScope size equals: 2.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations withoutSelfLoops atTypeScope
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						add: self c15FullReferencerOutSide;
						yourself)).
	self assert: self c3ReferencerInSideRefereeOutSide queryAllIncomingAssociations atTypeScope size equals: 3.
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingAssociations atTypeScope
				equalsTo:
					(Set new
						add: self c1FullReferencerOutSide;
						add: self c6FullReferencerInSideOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))