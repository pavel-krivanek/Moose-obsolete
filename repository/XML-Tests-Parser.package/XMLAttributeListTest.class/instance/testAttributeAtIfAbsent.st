tests
testAttributeAtIfAbsent
	| list |

	list := self emptyList.
	self listItems do: [:each |
		self assert:
			(list
				attributeAt: each name
				ifAbsent: [self absentListItem value]) = self absentListItem value.
	
		list add: each.
		self assert:
			(list
				attributeAt: each name
				ifAbsent: [self fail]) = each value].

	self assert:
		(list
			attributeAt: self prefixedAttribute name
			ifAbsent: [self absentListItem value]) = self absentListItem value.
	self assert:
		(list
			attributeAt: self prefixedAttribute localName
			ifAbsent: [self absentListItem value]) = self absentListItem value.

	list add: self prefixedAttribute.
	self assert:
		(list
			attributeAt: self prefixedAttribute name
			ifAbsent: [self fail]) = self prefixedAttribute value.
	self assert:
		(list
			attributeAt: self prefixedAttribute localName
			ifAbsent: [self absentListItem value]) = self absentListItem value.