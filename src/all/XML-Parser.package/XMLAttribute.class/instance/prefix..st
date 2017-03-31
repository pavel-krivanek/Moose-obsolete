accessing
prefix: aPrefix
	self renameWith: [name := self localName qualifyWithXMLPrefix:  aPrefix]