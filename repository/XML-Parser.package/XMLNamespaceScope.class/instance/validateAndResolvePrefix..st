private
validateAndResolvePrefix: aPrefix
	^ self
		prefixMappingAt: aPrefix
		ifAbsent: [
			aPrefix = 'xml'
				ifTrue: [self xmlNamespaceURI]
				ifFalse: [					
					(aPrefix = 'xmlns'
						ifTrue: [self errorCannotUseXMLNSPrefix]
						ifFalse: [self errorUnmappedPrefix: aPrefix])]]