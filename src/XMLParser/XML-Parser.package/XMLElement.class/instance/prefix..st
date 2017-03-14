accessing
prefix: aPrefix
	"Changes the prefix of the name of the receiver to aPrefix. If namespace
	checking is enabled (default) and aPrefix is non-empty, then aPrefix must
	have been declared."

	self renameWith: [name := self localName qualifyWithXMLPrefix:  aPrefix]