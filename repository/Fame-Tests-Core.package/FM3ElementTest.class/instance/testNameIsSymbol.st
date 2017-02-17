running
testNameIsSymbol
	(tower metaMetamodel elementNamed: 'FM3') name isSymbol should beTrue.
	(tower metaMetamodel elementNamed: 'FM3.Property') name isSymbol should beTrue.
	(tower metaMetamodel elementNamed: 'FM3.Property.opposite') name isSymbol should beTrue