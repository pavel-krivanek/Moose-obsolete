tests
testHasParser
	| parser |

	parser := SAXTestingMessageRecordingHandler on: self prefixedXMLSource.
	self deny: parser hasParser.
	parser parseDocument.

	parser hasParserResults do: [:each |
		self assert: each].

	parser on: self prefixedXMLSource.
	self deny: parser hasParser.