private
errorCannotAliasXMLOrXMLNSWithPrefix: aPrefix
	aPrefix isEmpty
		ifTrue: [
			XMLNamespaceException signal:
				'Cannot use "xml" or  "xmlns" namespace URI as default namespace']
		ifFalse: [
			XMLNamespaceException
				formatSignal:
					'Cannot alias the "xml" or "xmlns" namespace URIs ',
					'with prefix "{1}"'
				with: aPrefix]