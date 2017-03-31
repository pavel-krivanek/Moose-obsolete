references
testStaticReferencedClasses
	self assert: self c6FullReferencerInSideOutSide queryOutgoingReferences opposites size equals: 3.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences opposites
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c5ReferencerInSideRefereeInSide;
						add: self c11FullRefereeOutSide;
						yourself))