tests
testDeclarePrefixURI
	| element elementsWithDeclaredPrefix |

	(element := self newNodeWithElements)
		declarePrefix: 'newPrefix' uri: 'prefixNS';
		allElementsDo: [:each | self assert: (each isDeclaredPrefix: 'newPrefix' uri: 'prefixNS')];
		declarePrefix: 'newPrefix' uri: 'newPrefixNS';
		allElementsDo: [:each | self assert: (each isDeclaredPrefix: 'newPrefix' uri: 'newPrefixNS')].

	elementsWithDeclaredPrefix :=
		element allElementsSelect: [:each | each prefix = 'prefix'].
	element
		declarePrefix: 'prefix' uri: 'newPrefixNS';
		allElementsDo: [:each |
			(elementsWithDeclaredPrefix includes: each)
				ifTrue: [
					self
						assert: (each isDeclaredPrefix: 'prefix');
						deny: (each isDeclaredPrefix: 'prefix' uri: 'newPrefixNS')]
				ifFalse: [self assert: (each isDeclaredPrefix: 'prefix' uri: 'newPrefixNS')]].

	self
		should: [element declarePrefix: 'nonDefault' uri: '']
		raise: XMLNamespaceException.
	"cannot rebind the xml prefix to a new NS"
	self 
		should: [element declarePrefix: 'xml' uri: 'newNS']
		raise: XMLNamespaceException.
	"cannot rebind the xmlns prefix, even to the same NS"
	self
		should: [element declarePrefix: 'xmlns' uri: XMLNamespaceScope xmlnsNamespaceURI]
		raise: XMLNamespaceException.