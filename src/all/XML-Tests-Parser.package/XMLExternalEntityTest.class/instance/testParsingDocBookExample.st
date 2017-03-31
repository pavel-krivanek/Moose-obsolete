tests
testParsingDocBookExample
	"This uses HTTP so is skipped by default"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testParsingDocBookExample.

	self
		shouldnt: [
			(SAXHandler on: self docBookExampleSource)
				resolvesExternalEntities: true;
				removeLimits;
				parseDocument]
		raise: XMLParserException.