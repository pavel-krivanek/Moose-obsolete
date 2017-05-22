inheritance
testInheritedByNamespaces
	self
		assert:
			((self c11FullRefereeOutSide queryIncomingInheritances
				atScope: FAMIXNamespace)
				equalsTo: (Set with: self namespace1InteractedReferencerReferee))