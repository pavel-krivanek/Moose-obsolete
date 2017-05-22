references
testStaticReferencedPackages
	| p8 p10 p11 |
	p8 := self packageP8FullReferencer.
	p10 := self packageP10InteractedReferee.
	p11 := self packageP11FullReferee.
	self
		assert:
			((p8 queryOutgoingReferences atScope: FAMIXPackage)
				equalsTo: (Set with: p10 with: p11))