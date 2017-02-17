private
writeXMLNSDeclarations: aDictionary
	self isCanonical
		ifTrue: [
			aDictionary keys
				sort;
				do: [:prefix |
					self
						writeXMLNS: prefix
						uri: (aDictionary at: prefix)]]
		ifFalse: [
			aDictionary keysDo: [:prefix |
				self
					writeXMLNS: prefix
					uri: (aDictionary at: prefix)]].