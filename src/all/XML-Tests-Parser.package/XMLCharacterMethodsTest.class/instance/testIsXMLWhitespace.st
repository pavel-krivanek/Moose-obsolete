tests
testIsXMLWhitespace
	| whitespace |

	whitespace := BitmapCharacterSet newFrom: Character xmlWhitespace.
	whitespace do: [:each |
		self assert: each isXMLWhitespace].
	whitespace complement do: [:each |
		self deny: each isXMLWhitespace].
	self deny: nil isXMLWhitespace.