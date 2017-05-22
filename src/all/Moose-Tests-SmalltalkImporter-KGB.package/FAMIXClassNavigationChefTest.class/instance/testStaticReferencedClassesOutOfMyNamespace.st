references
testStaticReferencedClassesOutOfMyNamespace
	self
		assert: 1
		equals:
			self c6FullReferencerInSideOutSide queryOutgoingReferences opposites
				outOfMyNamespace size.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences opposites
				outOfMyNamespace
				equalsTo:
					(Set new
						add: self c11FullRefereeOutSide;
						yourself)).
	self
		assert: 1
		equals:
			self c6FullReferencerInSideOutSide queryOutgoingReferences
				outOfMyNamespace size.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryOutgoingReferences
				outOfMyNamespace atScope: FAMIXType)
				equalsTo:
					self c6FullReferencerInSideOutSide queryOutgoingReferences opposites
						outOfMyNamespace)