inheritance
testInheritedNamespaces
	self
		assert:
			(self c11FullRefereeOutSide queryOutgoingInheritances
				atScope: FAMIXNamespace) size
		equals: 1.
	self
		assert:
			((self c11FullRefereeOutSide queryOutgoingInheritances
				atScope: FAMIXNamespace) includes: self namespace2FullReferee)