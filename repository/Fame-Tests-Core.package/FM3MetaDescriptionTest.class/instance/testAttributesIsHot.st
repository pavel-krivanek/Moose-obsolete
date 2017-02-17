running
testAttributesIsHot
	| class prop size |
	class := tower metaMetamodel elementNamed: 'FM3.Class'.
	prop := class attributes anyOne.
	size := class attributes size.
	class attributes size should = size.
	prop mmClass should = class.
	class attributes remove: prop.
	class attributes size should = (size - 1).
	prop mmClass isNil should beTrue