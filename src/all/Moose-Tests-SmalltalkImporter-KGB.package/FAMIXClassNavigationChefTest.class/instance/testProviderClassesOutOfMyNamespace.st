allDependencies
testProviderClassesOutOfMyNamespace
	self
		assert:
			(self c15FullReferencerOutSide queryAllOutgoingAssociations
				atScope: FAMIXType) outOfMyNamespace size
		equals: 3.
	self
		assert:
			((self c15FullReferencerOutSide queryAllOutgoingAssociations
				atScope: FAMIXType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c14ReferencerOutSideRefereeOutSide;
						add: self c18FullRefereeInSideOutSide;
						add: self c19FullRefereeOutSide;
						yourself))