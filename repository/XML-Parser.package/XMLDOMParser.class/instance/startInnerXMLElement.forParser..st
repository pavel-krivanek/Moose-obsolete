private
startInnerXMLElement: anElement forParser: aParser
	aParser driver
		setRootElement: anElement name
		currentScope: anElement namespaceScope