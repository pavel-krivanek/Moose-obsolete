tests
testStartDocument
	| saxHandler parser |

	saxHandler := SAXRecordingHandler on: '<test></test>'.
	parser := saxHandler parser.
	self deny: (saxHandler wasSentSelector: #startDocument).
	parser parseToken.
	self assert: (saxHandler wasSentSelector: #startDocument).