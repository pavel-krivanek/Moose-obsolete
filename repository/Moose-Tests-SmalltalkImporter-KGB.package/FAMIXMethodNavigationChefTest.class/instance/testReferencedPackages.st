allOutgoingInvocations
testReferencedPackages
	| c15m3 pExtensions p11|
	c15m3 := self getMethod: 'm4p8c15Mtd3()' from: self c15FullReferencerOutSide.
	pExtensions := self packagePExtensions.
	p11 := self packageP11FullReferee.
	self assert: c15m3 queryAllOutgoingInvocations atPackageScope size equals: 2.
	self assert: (c15m3 queryAllOutgoingInvocations atPackageScope equalsTo: (Set with: pExtensions with:p11))