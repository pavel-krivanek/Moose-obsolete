private
copyExtensionMethods
	"
	self copyXMLWriterExtensionMethods
	"
	#(isXMLNameChar isXMLNameStartChar) do: [:each |
		Character
			compile:
				'isXMLWriter',
				((Character sourceCodeAt: each) allButFirst: 'isXML' size)
			classified: '*XML-Writer-Core'].
	#(xmlPrefixBeforeLocalName xmlLocalNameAfterPrefix:) do: [:each |
		String
			compile:
				'xmlWriter',
				((String sourceCodeAt: each) allButFirst: 'xml' size)
			classified: '*XML-Writer-Core'].
		
	"copy string extensions to GS's CharacterCollection superclass"
	XMLClassFinder
		classNamed: #CharacterCollection
		ifPresent: [:characterCollectionClass |
			(String selectorsInProtocol: #'*XML-Writer-Core') do: [:each |
				characterCollectionClass
					compile: (String sourceCodeAt: each)
					classified: #'*XML-Writer-GemstoneCompatibility']].