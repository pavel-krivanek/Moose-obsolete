references
testStaticReferencingClassesIntoMyPackage
	self assert: self c14ReferencerOutSideRefereeOutSide queryIncomingReferences atTypeScope withinMyPackage isEmpty.
	self assert: self c13FullRefereeInSideOutSide queryIncomingReferences atTypeScope withinMyPackage size equals: 1.
	self
		assert:
			(self c13FullRefereeInSideOutSide queryIncomingReferences atTypeScope withinMyPackage
				equalsTo:
					(Set new
						add: self c12FullReferencerInSide;
						yourself))