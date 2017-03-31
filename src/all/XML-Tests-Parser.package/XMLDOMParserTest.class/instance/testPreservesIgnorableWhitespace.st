tests
testPreservesIgnorableWhitespace
	| parser |

	parser := XMLDOMParser on: self addressBookXML.
	parser isValidating: false.
	"should enable validation"
	self
		deny: parser preservesIgnorableWhitespace;
		assert: (parser preservesIgnorableWhitespace: true) == parser;
		assert: parser preservesIgnorableWhitespace;
		assert: parser isValidating.

	"disabling validation should disable it"
	self
		assert: (parser isValidating: false) == parser;
		deny: parser preservesIgnorableWhitespace;
		deny: parser isValidating