private
isRedundantActiveTagWriterXMLNSPrefix: aPrefix uri: aURI
	self activeMarkupWriterAncestorsDo: [:each |
		(each isTagWriter
			and: [each hasXMLNSDeclarations])
			ifTrue: [
				each xmlnsDeclarations
					at: aPrefix
					ifPresent: [:uri | ^ uri = aURI]]].
	
	"declarations to reset the default namespace (like xmlns='') are
	considered redundant when there's no previous default namespace
	declaration being reset"
	^ aPrefix size = 0
		and: [aURI size = 0].