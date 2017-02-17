famix-method
testFamixMethodPackageScope
	| c1Mtd4 |
	c1Mtd4 := self getMethod: 'm1p1c1Mtd4:(Object)' from: self c1FullReferencerOutSide.
	
	self assert: (c1Mtd4 packageScope mooseIncludes: self packageP1FullReferencer).
	self deny: (c1Mtd4 packageScope mooseIncludes: self packageP2InteractedReferencerReferee)