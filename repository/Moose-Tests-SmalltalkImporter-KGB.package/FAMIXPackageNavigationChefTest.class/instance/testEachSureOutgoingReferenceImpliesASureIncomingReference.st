MooseKGB-TestFamix3-integralTests
testEachSureOutgoingReferenceImpliesASureIncomingReference 
	 
	| modelPackages | 
	modelPackages := self model allPackages. 
	self 
		assert: 
			(modelPackages 
				allSatisfy: 
					[:referencer |  
					referencer querySureOutgoingInvocations atTypeScope  
						allSatisfy: 
							[:referenced | referenced querySureIncomingInvocations atPackageScope includes: referencer]]). 
	self 
		assert: 
			(modelPackages 
				allSatisfy: 
					[:referencer |  
					referencer querySureOutgoingInvocations atPackageScope 
						allSatisfy: 
							[:referenced | referenced querySureIncomingInvocations atPackageScope includes: referencer]])