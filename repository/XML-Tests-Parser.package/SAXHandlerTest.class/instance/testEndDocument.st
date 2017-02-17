tests
testEndDocument
	| saxHandler parser |

	saxHandler := SAXRecordingHandler on: '<test></test>'.
	parser := saxHandler parser.

	3 timesRepeat: [
		parser parseToken.
		self
			deny: (saxHandler wasSentSelector: #endDocument);
			deny: parser atEnd].

	parser parseToken.
	self
		assert: (saxHandler wasSentSelector: #endDocument);
		assert: parser atEnd.