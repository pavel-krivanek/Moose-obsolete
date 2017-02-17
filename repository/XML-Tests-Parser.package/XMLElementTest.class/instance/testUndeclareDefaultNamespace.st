tests
testUndeclareDefaultNamespace
	| element elementsWithDefaultNamespace |

	element := self newNodeWithElements.
	elementsWithDefaultNamespace :=
		element allElementsSelect: [:each | each defaultNamespace notEmpty].

	element
		defaultNamespace: 'defaultNS';
		undeclareDefaultNamespace;
		allElementsDo: [:each |
			(elementsWithDefaultNamespace includes: each)
				ifTrue: [self assert: each defaultNamespace notEmpty]
				ifFalse: [self assert: each defaultNamespace isEmpty]].