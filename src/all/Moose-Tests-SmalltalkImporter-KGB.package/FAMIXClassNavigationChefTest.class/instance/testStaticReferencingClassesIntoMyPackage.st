references
testStaticReferencingClassesIntoMyPackage
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType) withinMyPackage isEmpty.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryIncomingReferences
				atScope: FAMIXType) withinMyPackage size
		equals: 1.
	self
		assert:
			((self c13FullRefereeInSideOutSide queryIncomingReferences
				atScope: FAMIXType) withinMyPackage
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						yourself))