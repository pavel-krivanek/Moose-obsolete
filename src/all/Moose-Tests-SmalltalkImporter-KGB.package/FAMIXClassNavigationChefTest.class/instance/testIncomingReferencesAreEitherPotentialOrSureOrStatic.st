MooseKGB-TestFamix3-integralTests
testIncomingReferencesAreEitherPotentialOrSureOrStatic
	| modelClasses |
	modelClasses := self model allClasses.
	self
		flag: 'Should we test all combinations of static, access, inheritance...?'.
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | 
					(referencer queryAllIncomingAssociations atScope: FAMIXType)
						includesAll: (referencer queryAllIncomingInvocations atScope: FAMIXType) ]).
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | 
					(referencer queryAllIncomingAssociations atScope: FAMIXPackage)
						includesAll: (referencer queryAllIncomingInvocations atScope: FAMIXPackage) ]).
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | 
					(referencer queryAllIncomingAssociations atScope: FAMIXNamespace)
						includesAll: (referencer queryAllIncomingInvocations atScope: FAMIXNamespace) ])