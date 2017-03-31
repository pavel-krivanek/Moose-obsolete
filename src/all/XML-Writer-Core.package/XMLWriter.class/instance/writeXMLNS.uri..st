private
writeXMLNS: aPrefix uri: aURI
	(self omitsRedundantXMLNSDeclarations
		and: [
			self
				isRedundantActiveTagWriterXMLNSPrefix: aPrefix
				uri: aURI])
		ifFalse: [
			self
				space;
				writeName:
					(aPrefix isEmpty
						ifTrue: ['xmlns']
						ifFalse: ['xmlns:', aPrefix])
				escapedContentValue: aURI]