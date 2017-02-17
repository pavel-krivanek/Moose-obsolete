tests
testParsingRetrievedURL
	"This uses HTTP so is skipped by default"
	| source |

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testParsingRetrievedURL.

	source := self feedURL asXMLURI get.
	self assert: source isString.
	self
		shouldnt: [SAXHandler parse: source]
		raise: XMLParserException.

	source := self feedURL asXMLURI streamGet.
	self
		assert: source isStream;
		assert: source peek isCharacter.
	self
		shouldnt: [SAXHandler parse: source]
		raise: XMLParserException.