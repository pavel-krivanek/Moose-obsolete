sureOutgoingInvocations
testSureReferencedMethodsDefinedInto 
	 
	| c19Mtd1 c19Mtd2 c19InstCreation c20Mtd1 | 
	c19Mtd1 := self getMethod: 'm6p11c19Mtd1()' from: self c19FullRefereeOutSide. 
	c19Mtd2 := self getMethod: 'm6p11c19Mtd2()' from: self c19FullRefereeOutSide. 
	c19InstCreation := self getMethod: 'm6p11c19InstCreation()' from: self c19FullRefereeOutSide. 
	c20Mtd1 := self getMethod: 'm6p12c20Mtd1()' from: self c20FullReferencerOutSide. 
	
	self assert: 1
		equals: (c19Mtd2 querySureOutgoingInvocations opposites withinClass: self c19FullRefereeOutSide) size. 
	self assert: 
			((c19Mtd2 querySureOutgoingInvocations opposites withinClass: self c19FullRefereeOutSide) 
		includes: c19Mtd1). 
	self assert: 1
		equals: (c20Mtd1 querySureOutgoingInvocations opposites withinClass: self c19FullRefereeOutSide) size. 
	self assert: 
			((c20Mtd1 querySureOutgoingInvocations opposites withinClass: self c19FullRefereeOutSide) 
		includes: c19InstCreation)