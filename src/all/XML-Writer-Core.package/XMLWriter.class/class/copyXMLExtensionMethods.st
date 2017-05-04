private
copyXMLExtensionMethods
	"
	self copyXMLExtensionMethods
	"
	#(isXMLNameChar isXMLNameStartChar) do: [:each |
		Character
			compile:
				'isXMLWriter',
				((Character sourceCodeAt: each) allButFirst: 'isXML' size)
			classified: #'*XML-Writer-Core'].
	#(xmlPrefixBeforeLocalName xmlLocalNameAfterPrefix:) do: [:each |
		String
			compile:
				'xmlWriter',
				((String sourceCodeAt: each) allButFirst: 'xml' size)
			classified: #'*XML-Writer-Core'].