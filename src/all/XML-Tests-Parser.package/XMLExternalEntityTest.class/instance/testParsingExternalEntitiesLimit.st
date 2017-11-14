tests
testParsingExternalEntitiesLimit
	"This test uses HTTP so is skipped by default."
	| handler parser limitedResolver totalResolvedExternalEntities |

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testParsingExternalEntitiesLimit.

	DTDCachingExternalEntityResolver clearEntityCache.

	(handler := SAXHandler on: self musicXMLDocument)
		resolvesExternalEntities: true.
	parser := handler parser.
	(limitedResolver := parser driver externalEntityResolver)
		maxExternalEntities: nil.
	parser parseDocument.
	totalResolvedExternalEntities := limitedResolver totalResolvedExternalEntities.
	self assert: totalResolvedExternalEntities > 0.

	"should report the same number of resolved entities each time, even if
	they were cached, to ensure deterministic behavior regardless of which
	resolver is used or the state of the cache"
	(handler := SAXHandler on: self musicXMLDocument)
		resolvesExternalEntities: true.
	parser := handler parser.
	(limitedResolver := parser driver externalEntityResolver)
		maxExternalEntities: totalResolvedExternalEntities.
	parser parseDocument.
	self assert:
		limitedResolver totalResolvedExternalEntities =
			totalResolvedExternalEntities.

	(handler := SAXHandler on: self musicXMLDocument)
		resolvesExternalEntities: true.
	parser := handler parser.
	(limitedResolver := parser driver externalEntityResolver)
		maxExternalEntities: totalResolvedExternalEntities - 1.
	self
		should: [parser parseDocument]
		raise: XMLLimitException.