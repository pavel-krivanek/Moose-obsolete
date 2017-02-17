tests
testDeclaresPrefixURI
	| element |

	element := self newNodeWithElements.
	self deny: element declaresDefaultNamespace.

	element declarePrefix: 'prefix' uri: 'prefixNS'.
	self assert: (element declaresPrefix: 'prefix' uri: 'prefixNS').
	element elementsDo: [:each |
		self deny: (each declaresPrefix: 'prefix' uri: 'prefixNS')].

	element elementsDo: [:each |
		each declarePrefix: 'prefix' uri: 'newPrefixNS'.
		self assert: (each declaresPrefix: 'prefix' uri: 'newPrefixNS')].

	self assert: (element declaresPrefix: 'prefix' uri: 'prefixNS').
	element undeclarePrefix: 'prefix'.
	self deny: (element declaresPrefix: 'prefix' uri: 'prefixNS').
	element elementsDo: [:each |
		self assert: (each declaresPrefix: 'prefix' uri: 'newPrefixNS')].