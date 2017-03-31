tests
testAddElementNamed
	| element userElement dataElement |

	element := XMLElement name: 'root'.
	element
		defaultNamespace: 'dataNS';
		declarePrefix: 'prefix' uri: 'prefixNS'.
	element nodeFactory:
		(XMLPluggableElementFactory new
			handleElement: 'data'
			namespaceURI: 'dataNS'
			withClass: XMLFElement;
			handleElement: 'user'
			namespaceURI: 'prefixNS'
			withClass: XMLFUserElement).

	userElement := element addElementNamed: 'prefix:user'.
	self
		assert: userElement class == XMLFUserElement;
		assert: (userElement isNamed: 'prefix:user');
		assert: userElement namespaceURI = 'prefixNS'.

	dataElement := element addElementNamed: 'data'.
	self
		assert: dataElement class == XMLFElement;
		assert: (dataElement isNamed: 'data');
		assert: dataElement namespaceURI = 'dataNS'.

	self assert: (element addElementNamed: 'default') class == XMLElement.