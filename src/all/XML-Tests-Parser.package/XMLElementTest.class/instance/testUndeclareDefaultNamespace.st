tests
testUndeclareDefaultNamespace
	| element oldRootDefaultNamespace elementsWithCustomDefaultNamespace |

	element := self newNodeWithElements.
	oldRootDefaultNamespace := element defaultNamespace.
	elementsWithCustomDefaultNamespace :=
		element descendantElementsSelect: [:each |
			each defaultNamespace notEmpty
				and: [each defaultNamespace ~= oldRootDefaultNamespace]].

	element
		defaultNamespace: 'newDefaultNS';
		undeclareDefaultNamespace;
		allElementsDo: [:each |
			(elementsWithCustomDefaultNamespace includes: each)
				ifTrue: [
					self
						assert: each defaultNamespace notEmpty;
						deny: each defaultNamespace = oldRootDefaultNamespace;
						deny: each defaultNamespace = 'newDefaultNS']
				ifFalse: [self assert: each defaultNamespace isEmpty]].

	(element := self newNode) usesNamespaces: false.
	self
		assert: element undeclareDefaultNamespace == element;
		assert: element usesNamespaces.