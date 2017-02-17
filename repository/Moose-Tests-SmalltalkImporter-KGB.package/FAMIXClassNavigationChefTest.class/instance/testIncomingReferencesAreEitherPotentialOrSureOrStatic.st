MooseKGB-TestFamix3-integralTests
testIncomingReferencesAreEitherPotentialOrSureOrStatic
	| modelClasses |
	modelClasses := self model allClasses.
	
	self flag: 'Should we test all combinations of static, access, inheritance...?'.

	self assert: (modelClasses allSatisfy: 
			[ :referencer | 
			referencer queryAllIncomingAssociations atTypeScope includesAll: referencer queryAllIncomingInvocations atTypeScope ]).
	self assert: (modelClasses allSatisfy: 
			[ :referencer | 
			referencer queryAllIncomingAssociations atPackageScope includesAll: referencer queryAllIncomingInvocations atPackageScope ]).
	self assert: (modelClasses allSatisfy: 
			[ :referencer | 
			referencer queryAllIncomingAssociations atNamespaceScope includesAll: referencer queryAllIncomingInvocations atNamespaceScope ]).
