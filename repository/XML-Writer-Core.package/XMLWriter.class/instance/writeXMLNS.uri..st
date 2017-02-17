private
writeXMLNS: aPrefix uri: aURI
	(self omitsRedundantXMLNSDeclarations
		and: [
			self
				isRedundantXMLNSPrefix: aPrefix
				uri: aURI])
		ifFalse: [
			self
				space;
				writeName:
					(aPrefix isEmpty
						ifTrue: ['xmlns']
						ifFalse: ['xmlns:', aPrefix])
				escapedContentValue: aURI]