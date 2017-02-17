allDependencies
testProviderClassesOutOfMyPackage
	self assert: self c15FullReferencerOutSide queryAllOutgoingAssociations atTypeScope outOfMyPackage size equals: 3.
	self
		assert:
			(self c15FullReferencerOutSide queryAllOutgoingAssociations atTypeScope outOfMyPackage
				equalsTo:
					(Set new
						add: self c14ReferencerOutSideRefereeOutSide;
						add: self c18FullRefereeInSideOutSide;
						add: self c19FullRefereeOutSide;
						yourself))