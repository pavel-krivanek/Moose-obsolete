references
testStaticReferencingClassesOutOfMyPackage
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType) outOfMyPackage size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType) outOfMyPackage size
		equals: 2.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType) outOfMyPackage
				equalsTo:
					(Set new
						add: self c6FullReferencerInSideOutSide;
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))