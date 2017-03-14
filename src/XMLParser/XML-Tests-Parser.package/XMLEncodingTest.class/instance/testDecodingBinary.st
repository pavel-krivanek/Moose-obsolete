tests
testDecodingBinary
	| source binarySource parser stream |

	source := self sourceXML.
	binarySource := source asArray collect: [:each | each asciiValue].
	parser := (SAXHandler on: binarySource) parser.
	stream := parser tokenizer streamReader stream.
	self
		assert: stream isXMLConvertingStreamAdapter;
		assert: stream hasDefaultStreamConverter;
		assert: stream upToEnd = source.