references
testStaticReferencedClasses 
	| c15m3 | 
	c15m3 := self getMethod: 'm4p8c15Mtd3()' from: self c15FullReferencerOutSide. 
	
	self assert: 1
		equals: c15m3 queryOutgoingReferences size. 
	self assert: (c15m3 queryOutgoingReferences opposites
		equalsTo: (Set with: self c19FullRefereeOutSide ))