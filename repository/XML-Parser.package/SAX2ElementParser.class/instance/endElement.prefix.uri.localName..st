handling - content
endElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName
	| oldElementHandler |

	(oldElementHandler := self elementHandler)
		endElement: aQualifiedName
		prefix: aPrefix
		uri: aURI
		localName: aLocalName.
	self
		elementHandler: oldElementHandler parent;
		elementHandlerFactory: oldElementHandler parentFactory.