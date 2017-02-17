sureOutgoingInvocations
testSureReferencedClassesIntoMyPackage 
	 
	self assert: 1
		equals: 	self c10FullReferencerInSide querySureOutgoingInvocations atTypeScope withinMyPackage size. 
	self assert: 
		(self c10FullReferencerInSide querySureOutgoingInvocations atTypeScope withinMyPackage 
		equalsTo: (Set with: self c9FullRefereeInSide ))