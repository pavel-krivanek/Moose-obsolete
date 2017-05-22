references
testStaticReferencingClassesOutOfMyNamespace
	self
		assert:
			(self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType) outOfMyNamespace size
		equals: 1.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c2ReferencerOutSideRefereeInSide;
						yourself)).
	self
		assert:
			(self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType) outOfMyNamespace size
		equals: 1.
	self
		assert:
			((self c3ReferencerInSideRefereeOutSide queryIncomingReferences
				atScope: FAMIXType) outOfMyNamespace
				equalsTo:
					(Set new
						add: self c14ReferencerOutSideRefereeOutSide;
						yourself))