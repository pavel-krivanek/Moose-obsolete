staticDependencies
testStaticProviderPackages
	| p6 |
	p6 := self packageP6InteractedReferee.
	self
		assert:
			((self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FAMIXPackage)
				equalsTo: (Set with: p6 with: self packageP5FullReferee))