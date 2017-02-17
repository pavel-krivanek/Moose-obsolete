tests
testElementsDetectIfNone
	| root |

	root := self newNodeWithElements firstElement.
	self assert: 
		(root
			elementsDetect: [:each |
				(each isNamed: 'four')
					and: [each namespaceURI = 'testNS']]
			ifNone: [self fail]) =
				(root elements
					detect: [:each |
						(each isNamed: 'four')
							and: [each namespaceURI = 'testNS']]).
	self assert:
		(root
			elementsDetect: [:each |
				(each isNamed: 'four')
					and: [each namespaceURI = 'absentNS']]
			ifNone: [#absent]) = #absent.