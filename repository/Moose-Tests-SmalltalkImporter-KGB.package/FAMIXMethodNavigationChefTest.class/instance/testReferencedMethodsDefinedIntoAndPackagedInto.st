allOutgoingInvocations
testReferencedMethodsDefinedIntoAndPackagedInto
	| c15m3 c19InstCreation1 c19m2 p11 pExtensions |
	c15m3 := self getMethod: 'm4p8c15Mtd3()' from: self c15FullReferencerOutSide.
	c19InstCreation1 := self getMethod: 'm6p11c19InstCreation1()' from: self c19FullRefereeOutSide.
	c19m2 := self getMethod: 'm6p11c19Mtd2()' from: self c19FullRefereeOutSide.
	p11 := self packageP11FullReferee.
	pExtensions := self packagePExtensions.
	
	self assert: 2
		equals: ((c15m3 queryAllOutgoingInvocations opposites
					withinClass: self c19FullRefereeOutSide) withinPackage: pExtensions) size.
	self assert: (((c15m3 queryAllOutgoingInvocations opposites
					withinClass: self c19FullRefereeOutSide) withinPackage: pExtensions)
		equalsTo: (Set with: c19InstCreation1 with: c19m2 )).
	self assert: ((c15m3 queryAllOutgoingInvocations opposites
					withinClass: self c19FullRefereeOutSide) withinPackage: p11) isEmpty