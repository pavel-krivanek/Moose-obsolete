tests
testElementsDetect
	| root element |

	root := self newNodeWithElements firstElement.
	element :=
		root elementsDetect: [:each |
			(each isNamed: 'four')
				and: [each namespaceURI = 'testNS']].
	self deny: element isNil.
	self assert:
		element = 
			(root elements detect: [:each |
				(each isNamed: 'four')
					and: [each namespaceURI = 'testNS']]).
	self assert:
		(root elementsDetect: [:each |
			(each isNamed: 'four')
				and: [each namespaceURI = 'absentNS']]) isNil.