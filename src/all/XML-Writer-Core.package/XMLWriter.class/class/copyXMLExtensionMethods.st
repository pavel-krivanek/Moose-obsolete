private
copyXMLExtensionMethods
	"
	self copyXMLExtensionMethods
	"
	
	"This generates XMLWriter String and Character extension methods
	from XMLParser String and Character extension methods.
	These could be placed in a shared .mcz they would both depend on,
	but this is simpler and loads faster."
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