accessing
classForElement: aQualifiedName namespaceURI: aURI localName: aLocalName attributes: anAssociationCollection ifNone: aBlock
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
			aLocalName size < aQualifiedName size
				ifTrue: [
					(self
						elementClassMapAt: aLocalName -> aURI
						attributes: anAssociationCollection)
						ifNotNil: [:class | ^ class].
					(self
						elementClassMapAt: aLocalName
						attributes: anAssociationCollection)
						ifNotNil: [:class | ^ class]]]
		ifFalse: [
			(self
				elementClassMapAt: aQualifiedName
				attributes: anAssociationCollection)
				ifNotNil: [:class | ^ class].
			aLocalName size < aQualifiedName size
				ifTrue: [
					(self
						elementClassMapAt: aLocalName
						attributes: anAssociationCollection)
						ifNotNil: [:class | ^ class]]].

	^ aBlock value.