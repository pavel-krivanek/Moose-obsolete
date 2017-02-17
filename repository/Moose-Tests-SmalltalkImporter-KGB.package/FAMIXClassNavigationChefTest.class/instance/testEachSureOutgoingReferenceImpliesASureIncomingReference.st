MooseKGB-TestFamix3-integralTests
testEachSureOutgoingReferenceImpliesASureIncomingReference 
	 
	| modelClasses | 
	modelClasses := self model allClasses. 
	self 
		assert: 
			(modelClasses 
				allSatisfy: 
					[:referencer |  
					referencer querySureOutgoingInvocations atTypeScope 
						allSatisfy: 
							[:referenced | referenced querySureIncomingInvocations atTypeScope includes: referencer]]). 
	self 
		assert: 
			(modelClasses 
				allSatisfy: 
					[:referencer |  
					referencer querySureOutgoingInvocations atPackageScope 
						allSatisfy: 
							[:referenced | referenced querySureIncomingInvocations atTypeScope includes: referencer]]). 
	self 
		assert: 
			(modelClasses 
				allSatisfy: 
					[:referencer |  
					referencer querySureOutgoingInvocations atNamespaceScope 
						allSatisfy: 
							[:referenced | referenced querySureIncomingInvocations atTypeScope includes: referencer]])