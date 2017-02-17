tests
testParsingDocBookArticle
	"This uses HTTP so is skipped by default"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testParsingDocBookArticle.

	self
		shouldnt: [
			(SAXHandler on: self docBookArticleSource)
				resolvesExternalEntities: true;
				removeLimits;
				parseDocument]
		raise: XMLParserException.