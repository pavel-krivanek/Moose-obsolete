MooseKGB-TestFamix3-integralTests
testEachOutgoingReferenceImpliesAnIncomingReference
	| modelClasses |
	modelClasses := self model allClasses.
	self assert: (modelClasses allSatisfy: 
			[ :referencer | 
			referencer queryAllOutgoingInvocations atTypeScope allSatisfy: [ :referenced | referenced queryAllIncomingInvocations atTypeScope includes: referencer ] ]).
	self assert: (modelClasses allSatisfy: 
			[ :referencer | 
			referencer queryAllOutgoingInvocations atPackageScope allSatisfy: [ :referenced | referenced queryAllIncomingInvocations atTypeScope includes: referencer ] ]).
	self assert: (modelClasses allSatisfy: 
			[ :referencer | 
			referencer queryAllOutgoingInvocations atNamespaceScope allSatisfy: [ :referenced | referenced queryAllIncomingInvocations atTypeScope includes: referencer ] ])