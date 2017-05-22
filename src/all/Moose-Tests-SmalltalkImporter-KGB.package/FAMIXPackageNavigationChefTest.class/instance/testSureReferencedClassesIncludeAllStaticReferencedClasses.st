MooseKGB-TestFamix3-integralTests
testSureReferencedClassesIncludeAllStaticReferencedClasses
	self
		assert:
			(self model allPackages
				allSatisfy: [ :referencer | 
					referencer querySureOutgoingAssociations
						includesAll: referencer queryStaticOutgoingAssociations ])