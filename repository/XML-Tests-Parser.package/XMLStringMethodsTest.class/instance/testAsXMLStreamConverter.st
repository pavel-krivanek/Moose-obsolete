tests
testAsXMLStreamConverter
	XMLStreamConverter allSubclassesDo: [:class |
		class encodingNames do: [:each |
			self assert: each asXMLStreamConverter class == class]]