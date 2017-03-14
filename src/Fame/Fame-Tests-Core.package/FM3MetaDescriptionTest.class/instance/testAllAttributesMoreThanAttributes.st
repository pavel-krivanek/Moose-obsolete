running
testAllAttributesMoreThanAttributes
	| elem |
	elem := tower metaMetamodel elementNamed: 'FM3.Class'.
	elem allAttributes size should > elem attributes size.
	elem allAttributes size should = (elem attributes size + elem superclass attributes size).
	(elem allAttributes includesAllOf: elem attributes) should beTrue.