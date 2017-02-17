tests
testAsMooseDescriptionWithResetting	
	self assert: (FAMIXClass asMooseDescription isKindOf: FM3MetaDescription).
	MooseModel resetMeta.
	self assert: (FAMIXClass asMooseDescription isKindOf: FM3MetaDescription).