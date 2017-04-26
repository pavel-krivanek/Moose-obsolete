tests
testParsingExternalEntitiesLimit
	"This test uses HTTP so is skipped by default."
	| parser resolver totalResolvedExternalEntities |

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testParsingExternalEntitiesLimit.

	DTDCachingExternalEntityResolver clearEntityCache.

	(parser := SAXHandler on: self musicXMLDocument)
		resolvesExternalEntities: true.
	(resolver := parser externalEntityResolver)
		maxExternalEntities: nil.
	parser parseDocument.
	totalResolvedExternalEntities := resolver totalResolvedExternalEntities.
	self assert: totalResolvedExternalEntities > 0.

	"should report the same number of resolved entities each time, even if
	they were cached, to ensure deterministic behavior regardless of which
	resolver is used or the state of the cache"
	(parser := SAXHandler on: self musicXMLDocument)
		resolvesExternalEntities: true.
	(resolver := parser externalEntityResolver)
		maxExternalEntities: totalResolvedExternalEntities.
	parser parseDocument.
	self assert:
		resolver totalResolvedExternalEntities =
			totalResolvedExternalEntities.

	(parser := SAXHandler on: self musicXMLDocument)
		resolvesExternalEntities: true.
	(resolver := parser externalEntityResolver)
		maxExternalEntities: totalResolvedExternalEntities - 1.
	self
		should: [parser parseDocument]
		raise: XMLLimitException.