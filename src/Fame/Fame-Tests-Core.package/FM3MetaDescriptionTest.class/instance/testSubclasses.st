running
testSubclasses
	| elem |
	elem := tower metaMetamodel elementNamed: 'FM3.Element'.
	elem subclasses size should > 0