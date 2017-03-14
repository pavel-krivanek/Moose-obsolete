tests
testParsingExternalEntities
	"This test uses HTTP so is skipped by default."
	| entityCacheCopy |

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testParsingExternalEntities.

	DTDCachingExternalEntityResolver clearEntityCache.
	self assert: DTDCachingExternalEntityResolver entityCache isEmpty.

	SAXHandler
		parse: self musicXMLDocument
		usingNamespaces: true
		validation: true
		externalEntities: true.
	self deny: DTDCachingExternalEntityResolver entityCache isEmpty.

	"ensure there is no re-requesting of cached entities"
	entityCacheCopy := DTDCachingExternalEntityResolver entityCache copy.
	SAXHandler
		parse: self musicXMLDocument
		usingNamespaces: true
		validation: true
		externalEntities: true.
	DTDCachingExternalEntityResolver entityCache keysAndValuesDo: [:key :value |
		self assert:
			(entityCacheCopy
				at: key
				ifAbsent: [self fail]) == value].