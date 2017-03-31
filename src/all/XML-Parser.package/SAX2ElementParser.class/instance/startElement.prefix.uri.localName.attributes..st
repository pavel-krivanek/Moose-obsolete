handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName attributes: aDictionary
	| newElementHandler |

	newElementHandler :=
		(self elementHandlerFactory
			classForElement: aQualifiedName
			namespaceURI: aURI
			localName: aLocalName
			attributes: aDictionary)
				parser: self
				parent: self elementHandler
				parentFactory: self elementHandlerFactory.
	self
		elementHandler: newElementHandler;
		elementHandlerFactory:
			(self elementHandlerFactoryMapper
				factoryForElementHandler: newElementHandler
				ifNone: [self elementHandlerFactory]).

	newElementHandler
		startElement: aQualifiedName
		prefix: aPrefix
		uri: aURI
		localName: aLocalName
		attributes: aDictionary.