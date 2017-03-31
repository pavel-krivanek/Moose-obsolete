testing
testParseAllXml
	self resource allXmlDefinitions 
		do: [ :each | self assertParseInvariant: each ]