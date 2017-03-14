tests
testHasNamespaces
	| element |

	element := self newNode.
	self deny: element hasNamespaces.

	element defaultNamespace: 'defaultNS'.
	self assert: element hasNamespaces.

	element undeclarePrefix: ''.
	self deny: element hasNamespaces.

	element declarePrefix: 'prefix' uri: 'prefixNS'.
	self assert: element hasNamespaces.

	element undeclarePrefix: 'prefix'.
	self deny: element hasNamespaces.