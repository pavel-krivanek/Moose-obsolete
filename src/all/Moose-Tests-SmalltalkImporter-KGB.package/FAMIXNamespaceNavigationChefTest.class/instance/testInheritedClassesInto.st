inheritance
testInheritedClassesInto
	self
		assert:
			(((self namespace1InteractedReferencerReferee
				queryOutgoingInheritances atScope: FAMIXType)
				withinNamespace: self namespace2FullReferee)
				equalsTo: (Set with: self c11FullRefereeOutSide))