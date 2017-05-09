tests
testIsXMLSeparator
	| separators |

	separators := BitmapCharacterSet newFrom: Character xmlSeparators.
	separators do: [:each |
		self assert: each isXMLSeparator].
	separators complement do: [:each |
		self deny: each isXMLSeparator].
	self deny: nil isXMLSeparator.