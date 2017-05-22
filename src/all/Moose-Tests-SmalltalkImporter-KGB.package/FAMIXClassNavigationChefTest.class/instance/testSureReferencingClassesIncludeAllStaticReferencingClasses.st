MooseKGB-TestFamix3-integralTests
testSureReferencingClassesIncludeAllStaticReferencingClasses
	| modelClasses |
	modelClasses := self model allClasses.
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | 
					(referencer queryAllIncomingAssociations atScope: FAMIXType)
						includesAll: (referencer queryStaticIncomingAssociations atScope: FAMIXType) ])