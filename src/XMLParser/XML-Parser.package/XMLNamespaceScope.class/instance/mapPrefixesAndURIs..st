mapping
mapPrefixesAndURIs: anAssociationCollection
	| copiedPrefixMappings |

	anAssociationCollection associationsDo: [:each |
		self
			validatePrefix: each key
			beforeMappingTo: each value.
		"nil test ensures we only copy the first time when needed"
		(copiedPrefixMappings
			ifNil: [copiedPrefixMappings := self copiedPrefixMappings])
			at: each key
			put: each value]