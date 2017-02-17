tests
testParsingURL
	"This uses HTTP so is skipped by default"
	| doc |

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testParsingURL.

	self
		shouldnt: [doc := XMLDOMParser parseURL: self feedURL]
		raise: XMLHTTPException.
	self assert: (doc root isNamed: 'feed').