tests
testElementNames
	| document root  persons |

	document := XMLDOMParser parse: self addressBookXML.
	root := document root.

	persons := 	root allNodesSelect: [:each |
			each isElement
				and: [(each isNamedAny: #('notperson' 'person'))
					and: [(each isNamed: 'person')
						and: [(each name = 'person') and: [each localName = 'person']]]]].
	self assert: persons size = 4.

	root allElementsNamed: 'person' do: [:p |
		self assert: (persons includes: p).
		persons remove: p].
	self assert: persons isEmpty.