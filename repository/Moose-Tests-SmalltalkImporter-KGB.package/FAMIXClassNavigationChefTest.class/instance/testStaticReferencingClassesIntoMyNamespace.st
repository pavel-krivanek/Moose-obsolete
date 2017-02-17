references
testStaticReferencingClassesIntoMyNamespace
	self assert: self c14ReferencerOutSideRefereeOutSide queryIncomingReferences atTypeScope withinMyNamespace isEmpty.
	self assert: self c13FullRefereeInSideOutSide queryIncomingReferences atTypeScope withinMyNamespace size equals: 1.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryIncomingReferences atTypeScope withinMyNamespace
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						yourself))