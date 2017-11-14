private
errorXMLNSPrefixInAttribute: anAttribute
	XMLNamespaceException
		formatSignal: 'Attribute "{1}" uses reserved "xmlns" namespace prefix'
		with: anAttribute