sureIncomingInvocations
testSureReferencingNamespaces 
	 
	| c19InstCreation | 
	c19InstCreation := self 	getMethod: 'm6p11c19InstCreation()' from: self c19FullRefereeOutSide. 
	self assert: 3
		equals: c19InstCreation querySureIncomingInvocations atNamespaceScope size. 
	self assert: 
			(c19InstCreation querySureIncomingInvocations atNamespaceScope 
				equalsTo: (Set 
						with: self namespace4FullReferencer
						with: self namespace5InteractedReferencer 
						with: self namespace6InteractedReferee))