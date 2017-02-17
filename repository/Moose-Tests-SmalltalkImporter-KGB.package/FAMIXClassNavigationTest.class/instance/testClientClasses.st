MooseKGB-TestFamix3-allDependencies
testClientClasses
	self assert: self c14ReferencerOutSideRefereeOutSide clientTypes size equals: 2.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide clientTypes
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						add: self c15FullReferencerOutSide;
						yourself)).
	self assert: self c3ReferencerInSideRefereeOutSide clientTypes size equals: 3.
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide clientTypes
				equalsTo:
					(Set new
						add: self c1FullReferencerOutSide;
						add: self c6FullReferencerInSideOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))