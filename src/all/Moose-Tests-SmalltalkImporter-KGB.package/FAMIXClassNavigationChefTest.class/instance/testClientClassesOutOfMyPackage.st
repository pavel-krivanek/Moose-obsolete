allDependencies
testClientClassesOutOfMyPackage
	self
		assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations atTypeScope outOfMyPackage size
		equals: 2.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryAllIncomingAssociations atTypeScope outOfMyPackage
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						add: self c15FullReferencerOutSide;
						yourself)).
	self
		assert: self c3ReferencerInSideRefereeOutSide queryAllIncomingAssociations atTypeScope outOfMyPackage size
		equals: 3.
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryAllIncomingAssociations atTypeScope outOfMyPackage
				equalsTo:
					(Set new
						add: self c1FullReferencerOutSide;
						add: self c6FullReferencerInSideOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))