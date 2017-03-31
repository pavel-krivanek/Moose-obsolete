running
testClassHasOpposite
	| e |
	e := tower metaMetamodel elementNamed: 'FM3.Property.class'.
	e hasOpposite should beTrue.
	e opposite fullName should = 'FM3.Class.attributes'