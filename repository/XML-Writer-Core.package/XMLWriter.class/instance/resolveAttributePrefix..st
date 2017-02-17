private
resolveAttributePrefix: aPrefix
	"attributes with empty prefixes have no namespace, not even the
	default, unlike elements"
	aPrefix size > 0 "optimization"
		ifTrue: [
			(aPrefix at: 1) == $x "optimization"
				ifTrue: [
					aPrefix = 'xml'
						ifTrue: [^ self xmlNamespaceURI].
					"this prefix shouldn't be used for attributes, but we
					resolve it anyway"
					aPrefix = 'xmlns'
						ifTrue: [^ self xmlnsNamespaceURI]].

			self activeMarkupWriterWithAncestorsDo: [:each |
				each isTagWriter
					and: [each hasXMLNSDeclarations
						and: [
							each xmlnsDeclarations
								at: aPrefix
								ifPresent: [:uri | ^ uri]]]]].

	^ ''.