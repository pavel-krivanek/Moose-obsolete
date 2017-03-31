MooseKGB-TestFamix3-integralTests
testSureReferencedClassesIncludeAllStaticReferencedClasses 
	 
	| modelClasses | 
	modelClasses := self model allClasses. 
	self 
		assert: 
			(modelClasses 
				allSatisfy: 
					[:referencer |  
					referencer queryAllOutgoingAssociations atTypeScope 
						includesAll: referencer queryStaticOutgoingAssociations atTypeScope])