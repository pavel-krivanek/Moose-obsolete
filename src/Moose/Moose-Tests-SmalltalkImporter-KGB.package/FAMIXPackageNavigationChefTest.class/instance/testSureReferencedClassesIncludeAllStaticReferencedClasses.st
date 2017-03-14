MooseKGB-TestFamix3-integralTests
testSureReferencedClassesIncludeAllStaticReferencedClasses 
	 
	| modelPackages | 
	modelPackages := self model allPackages. 
	self 
		assert: 
			(modelPackages 
				allSatisfy: 
					[:referencer |  
					referencer querySureOutgoingAssociations
						includesAll: referencer queryStaticOutgoingAssociations])