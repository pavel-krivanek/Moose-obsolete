MooseKGB-TestFamix3-integralTests
testEachStaticOutgoingReferenceImpliesAStaticIncomingReference 
	 
	| modelClasses | 
	modelClasses := self model allClasses. 
	self 
		assert: 
			(modelClasses 
				allSatisfy: 
					[:referencer |  
					referencer queryOutgoingReferences atTypeScope
						allSatisfy: 
							[:referenced | referenced queryIncomingReferences atTypeScope includes: referencer]]). 
	self 
		assert: 
			(modelClasses 
				allSatisfy: 
					[:referencer |  
					referencer queryOutgoingReferences atPackageScope 
						allSatisfy: 
							[:referenced | referenced queryIncomingReferences atTypeScope includes: referencer]]).
	