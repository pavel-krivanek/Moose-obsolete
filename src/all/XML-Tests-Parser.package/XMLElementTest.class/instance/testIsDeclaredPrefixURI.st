tests
testIsDeclaredPrefixURI
	| element elementsWithDeclaredPrefix oldNamespace |

	element := self newNodeWithElements.
	elementsWithDeclaredPrefix :=
		element allElementsSelect: [:each | each isDeclaredPrefix: 'prefix'].
	oldNamespace := elementsWithDeclaredPrefix anyOne resolvePrefix: 'prefix'.
	self assert: elementsWithDeclaredPrefix size = 2.

	element allElementsDo: [:each |
		self deny: (each isDeclaredPrefix: 'prefix' uri: 'newPrefixNS')].

	element declarePrefix: 'prefix' uri: 'newPrefixNS'.
	element allElementsDo: [:each |
		(elementsWithDeclaredPrefix includes: each )
			ifTrue: [self assert: (each isDeclaredPrefix: 'prefix' uri: oldNamespace)]
			ifFalse: [self assert: (each isDeclaredPrefix: 'prefix' uri: 'newPrefixNS')]].

	element undeclarePrefix: 'prefix'.
	element allElementsDo: [:each |
		(elementsWithDeclaredPrefix includes: each )
			ifTrue: [self assert: (each isDeclaredPrefix: 'prefix' uri: oldNamespace)]
			ifFalse: [self deny: (each isDeclaredPrefix: 'prefix')]].