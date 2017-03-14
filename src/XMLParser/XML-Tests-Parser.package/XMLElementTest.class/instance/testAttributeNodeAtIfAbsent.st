tests
testAttributeNodeAtIfAbsent
	| element attributeLocalNames |

	element := self newElementWithAttributes.
	element attributeNodes do: [:each |
		self assert:
			(element
				attributeNodeAt: each name
				ifAbsent: [self fail]) = each].
	attributeLocalNames :=
		(element attributeNodes collect: [:each | each localName]) asSet.
	attributeLocalNames do: [:localName |
		self assert:
			(element
				attributeNodeAt: localName
				ifAbsent: [self fail]) =
					(element attributeNodes detect: [:each | each localName = localName])].
	self assert:
		(element
			attributeNodeAt: 'absent'
			ifAbsent: [#absent]) = #absent.