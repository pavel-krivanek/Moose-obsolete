MooseKGB-TestFamix3-integralTests
testEachStaticOutgoingReferenceImpliesAStaticIncomingReference 
	 
	| modelPackages | 
	modelPackages := self model allPackages. 
	self 
		assert: 
			(modelPackages 
				allSatisfy: 
					[:referencer |  
					referencer queryOutgoingReferences atTypeScope 
						allSatisfy: 
							[:referenced | referenced queryIncomingReferences atPackageScope includes: referencer]]). 
	self 
		assert: 
			(modelPackages 
				allSatisfy: 
					[:referencer |  
					referencer queryOutgoingReferences atPackageScope 
						allSatisfy: 
							[:referenced | referenced queryIncomingReferences atPackageScope includes: referencer]])