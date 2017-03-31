sureIncomingInvocations
testSureReferencingPackages
	| c19InstCreation pEx p8 p9 p12|
	c19InstCreation := self getMethod: 'm6p11c19InstCreation()' from: self c19FullRefereeOutSide.
	pEx := self packagePExtensions.
	p8 := self packageP8FullReferencer.
	p9 := self packageP9FullReferencer.
	p12 := self packageP12FullReferencer.
	self assert: c19InstCreation querySureIncomingInvocations atPackageScope size equals: 4.
	self assert: (c19InstCreation querySureIncomingInvocations atPackageScope equalsTo: (Set with: pEx with: p8 with: p9 with: p12))