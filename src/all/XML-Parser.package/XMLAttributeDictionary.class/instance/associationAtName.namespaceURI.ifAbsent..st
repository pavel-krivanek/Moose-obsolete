accessing
associationAtName: aQualifiedOrLocalName namespaceURI: aURI ifAbsent: aBlock
	| namePrefix |

	(namePrefix := aQualifiedOrLocalName xmlPrefixBeforeLocalName) isEmpty
		ifTrue: [
			"aQualifiedOrLocalName has no prefix, so check for an
			attribute with a matching local name and namespace URI"
			self keysDo: [:each |
				(each isXMLQualifiedOrLocalName: aQualifiedOrLocalName)
					ifTrue: [| keyPrefix |
						(keyPrefix := each xmlPrefixBeforeLocalName) isEmpty
							ifTrue: [
								"unprefixed attribute have no namespace URI"
								aURI isEmpty
									ifTrue: [^ self associationAt: each]]
							ifFalse: [
								(self resolvePrefix: keyPrefix) = aURI
									ifTrue: [^ self associationAt: each]]]]]
		ifFalse: [
			"aQualifiedOrLocalName is a qualified name, look it up exactly"
			(self resolvePrefix: namePrefix) = aURI
				ifTrue: [
					^ self
						associationAt: aQualifiedOrLocalName
						ifAbsent: aBlock]].

	^ aBlock value.