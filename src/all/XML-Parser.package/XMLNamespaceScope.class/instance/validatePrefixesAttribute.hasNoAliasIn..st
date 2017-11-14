validating
validatePrefixesAttribute: anAttribute hasNoAliasIn: anAssociationSetOrNil
	"performance critical method"
	| prefix |

	(prefix := anAttribute xmlPrefixBeforeLocalName) size > 0 "optimization"
		ifTrue: [| attributeLocalNamesAndURIs uri oldSize |
			"not initialized unless needed"
			attributeLocalNamesAndURIs :=
				anAssociationSetOrNil
					ifNil: [attributeLocalNamesAndURIs := Set new].

			uri :=
				self
					prefixMappingAt: prefix
					ifAbsent: [
						prefix = 'xml'
							ifTrue: [self xmlNamespaceURI]
							ifFalse: [					
								prefix = 'xmlns'
									ifTrue: [
										"this can't happen during parsing, because
										'xmlns' attributes are treated as namespace
										declarations, but it can happen through DOM tree
										manipulation, for example:
											attributeNode prefix: 'xmlns'
										"
										self errorXMLNSPrefixInAttribute: anAttribute]
									ifFalse: [
										self
											errorUnmappedPrefix: prefix
											inAttribute: anAttribute]]].

			"a #size check after is faster than #includes:"
			oldSize := attributeLocalNamesAndURIs size.
			(attributeLocalNamesAndURIs
				add: (anAttribute xmlLocalNameAfterPrefix: prefix) -> uri;
				size) > oldSize
				ifFalse: [
					self
						errorAttribute: anAttribute
						aliasesURI: uri].
			^ attributeLocalNamesAndURIs]
		ifFalse: [
			"catch names like ':name' with an empty prefix"
			(anAttribute size > 0
				and: [(anAttribute at: 1) == $:])
				ifTrue: [self errorInvalidUnprefixedAttribute: anAttribute].
			^ anAssociationSetOrNil].