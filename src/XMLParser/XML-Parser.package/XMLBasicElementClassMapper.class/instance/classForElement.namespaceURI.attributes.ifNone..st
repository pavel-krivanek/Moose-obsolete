accessing
classForElement: aQualifiedName namespaceURI: aURI attributes: anAssociationCollection ifNone: aBlock
	| localName |

	aURI size > 0 "optimization"
		ifTrue: [
			(self
				elementClassMapAt: aQualifiedName -> aURI
				attributes: anAssociationCollection)
				ifNotNil: [:class | ^ class].
			(self
				elementClassMapAt: aQualifiedName
				attributes: anAssociationCollection)
				ifNotNil: [:class | ^ class].
			(localName := aQualifiedName xmlLocalNameAfterPrefix) size < aQualifiedName size
				ifTrue: [
					(self
						elementClassMapAt: localName -> aURI
						attributes: anAssociationCollection)
						ifNotNil: [:class | ^ class].
					(self
						elementClassMapAt: localName
						attributes: anAssociationCollection)
						ifNotNil: [:class | ^ class]]]
		ifFalse: [
			(self
				elementClassMapAt: aQualifiedName
				attributes: anAssociationCollection)
				ifNotNil: [:class | ^ class].
			(localName := aQualifiedName xmlLocalNameAfterPrefix) size < aQualifiedName size
				ifTrue: [
					(self
						elementClassMapAt: localName
						attributes: anAssociationCollection)
						ifNotNil: [:class | ^ class]]].

	^ aBlock value.