allDependencies
testClientClassesOutOfMyNamespace
	self
		assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations atTypeScope outOfMyNamespace size
		equals: 2.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations atTypeScope outOfMyNamespace
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						add: self c15FullReferencerOutSide;
						yourself)).
	self
		assert: self c3ReferencerInSideRefereeOutSide queryAllIncomingAssociations atTypeScope outOfMyNamespace size
		equals: 1.
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingAssociations atTypeScope outOfMyNamespace
				equalsTo:
					(Set new
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))