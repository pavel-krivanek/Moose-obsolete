allDependencies
testProviderClasses
	self assert: (self c15FullReferencerOutSide queryAllOutgoing atScope: FAMIXType) size equals: 3.
	self
		assert:
			((self c15FullReferencerOutSide queryAllOutgoing atScope: FAMIXType)
				equalsTo:
					(Set new
						add: self c14ReferencerOutSideRefereeOutSide;
						add: self c18FullRefereeInSideOutSide;
						add: self c19FullRefereeOutSide;
						yourself))