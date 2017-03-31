tests
testWriteXMLOn
	| element attributes |

	element := self nodeClass named: 'element'.
	self assert: element printString = '<element />'.
	
	element addString: 'test'.
	self assert: element printString = '<element>test</element>'.

	"attribute order should be preserved when printing"
	attributes :=
		self attributesClass
			with: 'b' -> 'one'
			with: 'a' -> 'two'
			with: 'c' -> 'three'
			with: 'e' -> 'four'
			with: 'd' -> 'five'.
	element setAttributes: attributes.
	self assert:
		element printString =
			'<element b="one" a="two" c="three" e="four" d="five">test</element>'.
	element setAttributes: attributes associations reversed.
	self assert:
		element printString =
			'<element d="five" e="four" c="three" a="two" b="one">test</element>'.