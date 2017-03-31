sureIncomingInvocations
testSureReferencingClassesInto 
	 
	| c13InstCreation p6 | 
	c13InstCreation := self 
		getMethod: 'm2p6c13InstCreation()' 
		from: self c13FullRefereeInSideOutSide. 
	p6 := self packageP6InteractedReferee. 
	
	self assert: 1
		equals: (c13InstCreation querySureIncomingInvocations atTypeScope withinPackage: p6) size. 
	self assert: 
			((c13InstCreation querySureIncomingInvocations atTypeScope withinPackage: p6) 
				equalsTo: (Set with: self c12FullReferencerInSide)). 
	self assert: 1
		equals: 	(c13InstCreation querySureIncomingInvocations atTypeScope
					withinNamespace: self namespace1InteractedReferencerReferee) size. 
	self assert: 
			((c13InstCreation querySureIncomingInvocations atTypeScope
				withinNamespace: self namespace1InteractedReferencerReferee) 
			equalsTo: (Set with: self c1FullReferencerOutSide ))