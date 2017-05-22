MooseKGB-TestFamix3-integralTests
testSureReferencedClassesIncludeAllStaticReferencedClasses
	self
		assert:
			(self model allClasses
				allSatisfy: [ :referencer | 
					(referencer queryAllOutgoingAssociations atScope: FAMIXType)
						includesAll: (referencer queryStaticOutgoingAssociations atScope: FAMIXType) ])