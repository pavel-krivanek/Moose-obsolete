tests
testIncludesAttribute
	| list |

	list := self emptyList.
	self listItems do: [:each |
		self deny: (list includesAttribute: each name).

		list add: each.
		self assert: (list includesAttribute: each name)].

	self
		deny: (list includesAttribute: self prefixedAttribute name);
		deny: (list includesAttribute: self prefixedAttribute localName).

	list add: self prefixedAttribute.
	self
		assert: (list includesAttribute: self prefixedAttribute name);
		deny: (list includesAttribute: self prefixedAttribute localName).