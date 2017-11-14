tests
testDefaultNamespace
	| element elementsWithDefaultNamespace |

	element := self newNodeWithElements.
	elementsWithDefaultNamespace :=
		element allElementsSelect: [:each |
			each defaultNamespace notEmpty].

	self assert: (element defaultNamespace: 'newDefaultNS') == element.
	element allElementsDo: [:each |
		(elementsWithDefaultNamespace includes: each)
			ifTrue: [self deny: (each defaultNamespace = 'newDefaultNS')]
			ifFalse: [self assert: (each defaultNamespace = 'newDefaultNS')]].

	self assert: (element defaultNamespace: '') == element.
	element allElementsDo: [:each |
		(elementsWithDefaultNamespace includes: each)
			ifTrue: [self deny: each defaultNamespace = '']
			ifFalse: [self assert: each defaultNamespace = '']].

	(element := self newNode) usesNamespaces: false.
	self
		assert: element defaultNamespace = '';
		deny: element usesNamespaces;
		assert: (element defaultNamespace: '') == element;
		assert: element usesNamespaces.