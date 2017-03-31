references
testStaticReferencingClasses
	self assert: self c14ReferencerOutSideRefereeOutSide queryIncomingReferences atTypeScope size equals: 1.
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryIncomingReferences atTypeScope
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self assert: self c3ReferencerInSideRefereeOutSide queryIncomingReferences atTypeScope size equals: 2.
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryIncomingReferences atTypeScope
				equalsTo:
					(Set new
						add: self c6FullReferencerInSideOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))