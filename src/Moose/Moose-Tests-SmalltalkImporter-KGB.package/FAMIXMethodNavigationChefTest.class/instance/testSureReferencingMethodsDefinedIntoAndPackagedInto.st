sureIncomingInvocations
testSureReferencingMethodsDefinedIntoAndPackagedInto 
	 
	| c13InstCreation c1Mtd1 c1Mtd4 p1 p6 | 
	c13InstCreation := self getMethod: 'm2p6c13InstCreation()' from: self c13FullRefereeInSideOutSide. 
	c1Mtd1 := self getMethod: 'm1p1c1Mtd1()' from: self c1FullReferencerOutSide. 
	c1Mtd4 := self getMethod: 'm1p1c1Mtd4:(Object)' from: self c1FullReferencerOutSide. 
	p1 := self packageP1FullReferencer. 
	p6 := self packageP6InteractedReferee.
	
	self assert: 2
		equals: ((c13InstCreation querySureIncomingInvocations opposites
					withinClass: self c1FullReferencerOutSide)
					withinPackage: p1) size. 
	self assert: 
			(((c13InstCreation querySureIncomingInvocations opposites
					withinClass: self c1FullReferencerOutSide)
					withinPackage: p1) 
				equalsTo: (Set with: c1Mtd1 with: c1Mtd4)). 
	self assert: 
			((c13InstCreation querySureIncomingInvocations opposites
					withinClass: self c1FullReferencerOutSide)
					withinPackage: 6) isEmpty