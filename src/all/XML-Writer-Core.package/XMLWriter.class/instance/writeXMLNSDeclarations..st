private
writeXMLNSDeclarations: aDictionary
	self isCanonical
		ifTrue: [
			aDictionary keys
				sort;
				do: [:each |
					self
						writeXMLNS: each
						uri: (aDictionary at: each)]]
		ifFalse: [
			aDictionary keysDo: [:each |
				self
					writeXMLNS: each
					uri: (aDictionary at: each)]]