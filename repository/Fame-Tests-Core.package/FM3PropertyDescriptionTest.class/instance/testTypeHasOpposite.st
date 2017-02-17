running
testTypeHasOpposite
	| e |
	e := tower metaMetamodel elementNamed: 'FM3.Property.type'.
	e hasOpposite should beFalse