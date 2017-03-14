MooseKGB-TestFamix3-integralTests
testEachOutgoingReferenceImpliesAnIncomingReference
	| modelPackages |
	modelPackages := self model allPackages.
	self assert: (modelPackages allSatisfy: 
			[ :referencer | 
			referencer queryAllOutgoingInvocations atTypeScope allSatisfy: [ :referenced | referenced queryAllIncomingInvocations atPackageScope includes: referencer ] ]).
	self assert: (modelPackages allSatisfy: 
			[ :referencer | 
			referencer queryAllOutgoingInvocations atPackageScope allSatisfy: [ :referenced | referenced queryAllIncomingInvocations atPackageScope includes: referencer ] ])