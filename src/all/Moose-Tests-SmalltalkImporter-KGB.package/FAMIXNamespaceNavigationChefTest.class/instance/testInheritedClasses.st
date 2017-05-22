inheritance
testInheritedClasses
	self
		assert:
			((self namespace1InteractedReferencerReferee queryOutgoingInheritances
				atScope: FAMIXType)
				equalsTo:
					(Set
						with: self c11FullRefereeOutSide
						with: self cObject
						with: self c6FullReferencerInSideOutSide)).
	self
		assert:
			(self namespace1InteractedReferencerReferee queryOutgoingInheritances
				opposites
				equalsTo:
					(Set
						with: self c6FullReferencerInSideOutSide
						with: self c11FullRefereeOutSide
						with: self cObject))