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
				writeXMLNS: aPrefix;
				nextPut: $=;
				writeEscapedContentString: aURI]