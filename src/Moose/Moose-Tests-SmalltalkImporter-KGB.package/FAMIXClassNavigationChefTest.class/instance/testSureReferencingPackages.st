sureIncomingInvocations
testSureReferencingPackages
	| pEx p8 p9 p11 p12 |
	pEx := self packagePExtensions.
	p8 := self packageP8FullReferencer.
	p9 := self packageP9FullReferencer.
	p11 := self packageP11FullReferee.
	p12 := self packageP12FullReferencer.
	self assert: self c19FullRefereeOutSide querySureIncomingInvocations atMethodScope atPackageScope size equals: 5.
	self
		assert:
			(self c19FullRefereeOutSide querySureIncomingInvocations atPackageScope equalsTo: (Set with: pEx with: p8 with: p9 with: p11 with: p12))