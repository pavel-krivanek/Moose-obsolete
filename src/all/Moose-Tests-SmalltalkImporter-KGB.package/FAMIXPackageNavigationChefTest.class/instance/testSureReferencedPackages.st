sureOutgoingInvocations
testSureReferencedPackages
	| p8 p10 p11 pEx |
	p8 := self packageP8FullReferencer.
	p10 := self packageP10InteractedReferee.
	p11 := self packageP11FullReferee.
	pEx := self packagePExtensions.
	self
		assert:
			((p8 querySureOutgoingInvocations atScope: FAMIXPackage)
				equalsTo: (Set with: p10 with: p11 with: pEx))