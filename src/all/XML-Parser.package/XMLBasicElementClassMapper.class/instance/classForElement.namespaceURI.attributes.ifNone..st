accessing
classForElement: aQualifiedName namespaceURI: aURI attributes: anAssociationCollection ifNone: aBlock
	| localName attributeDictionary |

	attributeDictionary := anAssociationCollection asXMLAttributeDictionary.
	aURI size > 0 "optimization"
		ifTrue: [
			(self
				elementClassMapAt: aQualifiedName -> aURI
				attributes: attributeDictionary)
				ifNotNil: [:class | ^ class].
			(self
				elementClassMapAt: aQualifiedName
				attributes: attributeDictionary)
				ifNotNil: [:class | ^ class].
			(localName := aQualifiedName xmlLocalNameAfterPrefix) size <
				aQualifiedName size
				ifTrue: [
					(self
						elementClassMapAt: localName -> aURI
						attributes: attributeDictionary)
						ifNotNil: [:class | ^ class].
					(self
						elementClassMapAt: localName
						attributes: attributeDictionary)
						ifNotNil: [:class | ^ class]]]
		ifFalse: [
			(self
				elementClassMapAt: aQualifiedName
				attributes: attributeDictionary)
				ifNotNil: [:class | ^ class].
			(localName := aQualifiedName xmlLocalNameAfterPrefix) size <
				aQualifiedName size
				ifTrue: [
					(self
						elementClassMapAt: localName
						attributes: attributeDictionary)
						ifNotNil: [:class | ^ class]]].

	^ aBlock value.