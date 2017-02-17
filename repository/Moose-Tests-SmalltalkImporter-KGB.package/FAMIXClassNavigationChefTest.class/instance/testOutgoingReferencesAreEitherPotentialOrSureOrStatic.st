MooseKGB-TestFamix3-integralTests
testOutgoingReferencesAreEitherPotentialOrSureOrStatic
	| modelClasses |
	modelClasses := self model allClasses.
	
	self flag: 'See testIncomingReferencesAreEitherPotentialOrSureOrStatic'.
	
	self assert: (modelClasses allSatisfy: 
			[ :referencer | 
			referencer queryAllOutgoingAssociations atTypeScope includesAll: referencer queryAllOutgoingInvocations atTypeScope ]).
