tests
testRemoveAttributeIfAbsent
	| list |

	list := self listWithItems.
	self listItems do: [:each |
		self assert:
			(list
				removeAttribute: each name
				ifAbsent: [self fail]) = each value.
		self deny: (list includes: each).
	
		self assert:
			(list
				removeAttribute: each name
				ifAbsent: [self absentListItem value]) = self absentListItem value].

	list add: self prefixedAttribute.
	self assert:
		(list
			removeAttribute: self prefixedAttribute localName
			ifAbsent: [self absentListItem value]) = self absentListItem value.
	self assert: (list includes: self prefixedAttribute).
	self assert:
		(list
			removeAttribute: self prefixedAttribute name
			ifAbsent: [self fail]) = self prefixedAttribute value.
	self deny: (list includes: self prefixedAttribute).