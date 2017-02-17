tests
testIncludesAttributeNode
	| list |

	list := self emptyList.
	self listItems do: [:each |
		self deny: (list includesAttributeNode: each name).

		list add: each.
		self assert: (list includesAttributeNode: each name)].

	self
		deny: (list includesAttributeNode: self prefixedAttribute name);
		deny: (list includesAttributeNode: self prefixedAttribute localName).

	list add: self prefixedAttribute.
	self
		assert: (list includesAttributeNode: self prefixedAttribute name);
		assert: (list includesAttributeNode: self prefixedAttribute localName).