tests
testDefaultNamespace
	| element elementsWithDefaultNamespace |

	element := self newNodeWithElements.
	elementsWithDefaultNamespace :=
		element allElementsSelect: [:each |
			each defaultNamespace notEmpty].

	element
		defaultNamespace: 'newDefaultNS';
		allElementsDo: [:each |
			(elementsWithDefaultNamespace includes: each)
				ifTrue: [self deny: (each defaultNamespace = 'newDefaultNS')]
				ifFalse: [self assert: (each defaultNamespace = 'newDefaultNS')]].

	element
		defaultNamespace: '';
		allElementsDo: [:each |
			(elementsWithDefaultNamespace includes: each)
				ifTrue: [self deny: each defaultNamespace = '']
				ifFalse: [self assert: each defaultNamespace = '']].