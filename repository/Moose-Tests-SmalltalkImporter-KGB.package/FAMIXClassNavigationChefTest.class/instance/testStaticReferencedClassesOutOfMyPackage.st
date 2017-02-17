references
testStaticReferencedClassesOutOfMyPackage
	self assert: self c6FullReferencerInSideOutSide queryOutgoingReferences opposites outOfMyPackage size equals: 2.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences opposites outOfMyPackage
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c11FullRefereeOutSide;
						yourself))