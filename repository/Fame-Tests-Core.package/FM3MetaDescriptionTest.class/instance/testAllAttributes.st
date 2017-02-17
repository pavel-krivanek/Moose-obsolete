running
testAllAttributes
	| elem |
	elem := tower metaMetamodel elementNamed: 'FM3.Class'.
	elem allAttributes notNil should beTrue.
	elem allAttributes isCollection should beTrue.
	elem allAttributes isEmpty should beFalse