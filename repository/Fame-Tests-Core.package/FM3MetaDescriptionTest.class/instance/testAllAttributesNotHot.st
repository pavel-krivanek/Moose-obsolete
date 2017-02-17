running
testAllAttributesNotHot
	| class prop size |
	class := tower metaMetamodel elementNamed: 'FM3.Class'.
	prop := class allAttributes anyOne.
	size := class allAttributes size.
	class allAttributes size should = size.
	prop mmClass should = class.
	self 
		should: [ class allAttributes remove: prop ]
		raise: Error.
	class allAttributes size should = size.
	prop mmClass should = class