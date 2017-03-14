running
testIsCompositeDerived
	| e |
	e := tower metaMetamodel elementNamed: 'FM3.Property.composite'.
	e isDerived should beTrue