references
testStaticReferencedClassesIntoMyNamespace
	self assert: self c6FullReferencerInSideOutSide queryOutgoingReferences opposites withinMyNamespace size equals: 2.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryOutgoingReferences opposites withinMyNamespace
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c5ReferencerInSideRefereeInSide;
						yourself))