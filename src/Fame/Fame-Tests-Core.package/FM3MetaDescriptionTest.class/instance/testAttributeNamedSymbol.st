running
testAttributeNamedSymbol
	| elem |
	elem := tower metaMetamodel elementNamed: 'FM3.Class'.
	(elem attributeNamed: #owner) notNil should beTrue.
	(elem attributeNamed: #abstract) notNil should beTrue.
	(elem attributeNamed: #zork) isNil should beTrue