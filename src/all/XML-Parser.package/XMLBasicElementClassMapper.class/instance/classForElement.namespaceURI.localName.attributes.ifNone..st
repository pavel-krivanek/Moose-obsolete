accessing
classForElement: aQualifiedName namespaceURI: aURI localName: aLocalName attributes: anAssociationCollection ifNone: aBlock
	| attributeDictionary |

	attributeDictionary := anAssociationCollection.
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
			aLocalName size < aQualifiedName size
				ifTrue: [
					(self
						elementClassMapAt: aLocalName -> aURI
						attributes: attributeDictionary)
						ifNotNil: [:class | ^ class].
					(self
						elementClassMapAt: aLocalName
						attributes: attributeDictionary)
						ifNotNil: [:class | ^ class]]]
		ifFalse: [
			(self
				elementClassMapAt: aQualifiedName
				attributes: attributeDictionary)
				ifNotNil: [:class | ^ class].
			aLocalName size < aQualifiedName size
				ifTrue: [
					(self
						elementClassMapAt: aLocalName
						attributes: attributeDictionary)
						ifNotNil: [:class | ^ class]]].

	^ aBlock value.