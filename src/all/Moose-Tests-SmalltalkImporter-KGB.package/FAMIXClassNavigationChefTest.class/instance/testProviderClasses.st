allDependencies
testProviderClasses
	self assert: self c15FullReferencerOutSide queryAllOutgoingAssociations atTypeScope size equals: 3.
	self
		assert:
			(self c15FullReferencerOutSide queryAllOutgoingAssociations atTypeScope
				equalsTo:
					(Set new
						add: self c14ReferencerOutSideRefereeOutSide;
						add: self c18FullRefereeInSideOutSide;
						add: self c19FullRefereeOutSide;
						yourself))