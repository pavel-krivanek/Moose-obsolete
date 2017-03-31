MooseKGB-TestFamix3-integralTests
testSureReferencingClassesIncludeAllStaticReferencingClasses 
	 
	| modelPackages | 
	modelPackages := self model allPackages. 
	self 
		assert: 
			(modelPackages 
				allSatisfy: 
					[:referencer |  
					referencer querySureIncomingAssociations
						includesAll: referencer queryStaticIncomingAssociations])