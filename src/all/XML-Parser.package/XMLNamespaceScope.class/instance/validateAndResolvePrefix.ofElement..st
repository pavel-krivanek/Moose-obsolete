validating
validateAndResolvePrefix: aPrefix ofElement: anElement
	aPrefix size > 0 "optimization"
		ifTrue: [
			^ self
				prefixMappingAt: aPrefix
				ifAbsent: [
					aPrefix = 'xml'
						ifTrue: [self xmlNamespaceURI]
						ifFalse: [					
							aPrefix = 'xmlns'
								ifTrue: [self errorXMLNSPrefixInElement: anElement]
								ifFalse: [
									self
										errorUnmappedPrefix: aPrefix
										inElement: anElement]]]]
		ifFalse: [
			"catch names like ':name' with an empty prefix"
			(anElement size > 0
				and: [(anElement at: 1) == $:])
				ifTrue: [self errorInvalidUnprefixedElement: anElement].
			^ self defaultNamespace]