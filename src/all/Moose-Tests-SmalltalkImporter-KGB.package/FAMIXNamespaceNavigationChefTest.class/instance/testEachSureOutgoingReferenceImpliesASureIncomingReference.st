MooseKGB-TestFamix3-integralTests
testEachSureOutgoingReferenceImpliesASureIncomingReference 
	 
	| modelNamespaces | 
	modelNamespaces := self model allNamespaces. 
	self 
		assert: 
			(modelNamespaces 
				allSatisfy: 
					[:referencer |  
					referencer querySureOutgoingInvocations atTypeScope 
						allSatisfy: 
							[:referenced | referenced queryAllIncomingInvocations atNamespaceScope includes: referencer]]). 
	self 
		assert: 
			(modelNamespaces 
				allSatisfy: 
					[:referencer |  
					referencer querySureOutgoingInvocations atNamespaceScope  
						allSatisfy: 
							[:referenced | referenced queryAllIncomingInvocations atNamespaceScope includes: referencer]])