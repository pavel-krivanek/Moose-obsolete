famix-method
testFamixMethodClassScope
	| c1Mtd4 |
	c1Mtd4 := self getMethod: 'm1p1c1Mtd4:(Object)' from: self c1FullReferencerOutSide.
	
	self assert: (c1Mtd4 typeScope mooseIncludes: self c1FullReferencerOutSide).
	self deny: (c1Mtd4 typeScope mooseIncludes: self c2ReferencerOutSideRefereeInSide)