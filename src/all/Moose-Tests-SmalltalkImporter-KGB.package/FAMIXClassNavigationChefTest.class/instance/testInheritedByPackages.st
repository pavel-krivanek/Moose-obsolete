inheritance
testInheritedByPackages
	self
		assert:
			((self c11FullRefereeOutSide queryIncomingInheritances
				atScope: FAMIXPackage)
				equalsTo: (Set with: self packageP2InteractedReferencerReferee))