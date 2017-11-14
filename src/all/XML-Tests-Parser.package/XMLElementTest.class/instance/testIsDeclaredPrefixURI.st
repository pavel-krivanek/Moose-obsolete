tests
testIsDeclaredPrefixURI
	| element elementsWithDeclaredPrefix |

	element := self newNodeWithElements.
	elementsWithDeclaredPrefix :=
		element allElementsSelect: [:each |
			each isDeclaredPrefix: 'prefix'].

	element allElementsDo: [:each |
		self deny:
			(each
				isDeclaredPrefix: 'prefix'
				uri: 'newPrefixNS')].

	element
		declarePrefix: 'prefix'
		uri: 'newPrefixNS'.
	element allElementsDo: [:each |
		(elementsWithDeclaredPrefix includes: each )
			ifTrue: [
				self assert: (each isDeclaredPrefix: 'prefix').
				self deny:
					(each
						isDeclaredPrefix: 'prefix'
						uri: 'newPrefixNS')]
			ifFalse: [
				self assert:
					(each
						isDeclaredPrefix: 'prefix'
						uri: 'newPrefixNS')]].

	element undeclarePrefix: 'prefix'.
	element allElementsDo: [:each |
		(elementsWithDeclaredPrefix includes: each )
			ifTrue: [self assert: (each isDeclaredPrefix: 'prefix')]
			ifFalse: [self deny: (each isDeclaredPrefix: 'prefix')]].

	(element := self newNode) usesNamespaces: false.
	self deny:
		(element
			isDeclaredPrefix: 'prefix'
			uri: 'prefixNS').
	self deny: element usesNamespaces.