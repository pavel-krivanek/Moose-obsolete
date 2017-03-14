famix-method
testFamixMethodNamespaceScope
	| c1Mtd4 |
	c1Mtd4 := self getMethod: 'm1p1c1Mtd4:(Object)' from: self c1FullReferencerOutSide.
	
	self assert: (c1Mtd4 namespaceScope mooseIncludes: self namespace1InteractedReferencerReferee).
	self deny: (c1Mtd4 namespaceScope mooseIncludes: self namespace2FullReferee)