private
errorXMLNSPrefixInElement: anElement
	XMLNamespaceException
		formatSignal: 'Element <{1}> uses reserved "xmlns" namespace prefix'
		with: anElement