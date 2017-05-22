references
testStaticReferencingClassesIntoMyNamespace
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType) withinMyNamespace isEmpty.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryIncomingReferences
				atScope: FAMIXType) withinMyNamespace size
		equals: 1.
	self
		assert:
			((self c13FullRefereeInSideOutSide queryIncomingReferences
				atScope: FAMIXType) withinMyNamespace
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						yourself))