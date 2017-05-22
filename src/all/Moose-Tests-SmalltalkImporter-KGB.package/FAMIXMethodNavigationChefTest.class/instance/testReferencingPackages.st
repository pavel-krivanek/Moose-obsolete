allIncomingInvocations
testReferencingPackages
	| c19m1 pExtensions p11 p12 |
	c19m1 := self
		getMethod: 'm6p11c19Mtd1()'
		from: self c19FullRefereeOutSide.
	pExtensions := self packagePExtensions.
	p11 := self packageP11FullReferee.
	p12 := self packageP12FullReferencer.
	self
		assert: (c19m1 queryAllIncomingInvocations atScope: FAMIXPackage) size
		equals: 3.
	self
		assert:
			((c19m1 queryAllIncomingInvocations atScope: FAMIXPackage)
				equalsTo: (Set with: pExtensions with: p11 with: p12)).
	self
		assert:
			((c19m1 queryAllIncomingInvocations opposites atScope: FAMIXPackage)
				equalsTo: (Set with: pExtensions with: p11 with: p12))