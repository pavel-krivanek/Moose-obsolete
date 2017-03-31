tests
testAttributeNodeAtIfAbsent
	| list |

	list := self emptyList.
	self listItems do: [:each |
		self assert:
			(list
				attributeNodeAt: each name
				ifAbsent: [self absentListItem]) = self absentListItem.
	
		list add: each.
		self assert:
			(list
				attributeNodeAt: each name
				ifAbsent: [self fail]) = each].

	self assert:
		(list
			attributeNodeAt: self prefixedAttribute name
			ifAbsent: [self absentListItem]) = self absentListItem.
	self assert:
		(list
			attributeNodeAt: self prefixedAttribute localName
			ifAbsent: [self absentListItem]) = self absentListItem.

	list add: self prefixedAttribute.
	self assert:
		(list
			attributeNodeAt: self prefixedAttribute name
			ifAbsent: [self fail]) = self prefixedAttribute.
	self assert:
		(list
			attributeNodeAt: self prefixedAttribute localName
			ifAbsent: [self fail]) = self prefixedAttribute.