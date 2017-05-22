inheritance
testInheritedPackages
	| p6 |
	p6 := self packageP6InteractedReferee.
	self
		assert:
			((self c11FullRefereeOutSide queryOutgoingInheritances opposites
				atScope: FAMIXPackage) equalsTo: (Set with: p6))