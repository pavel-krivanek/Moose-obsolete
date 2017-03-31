tests
testIncludesAttributeNodeNamespaceURI
	| list |

	list := self emptyList.
	self listItems do: [:each |
		self deny:
			(list
				includesAttributeNode: each name
				namespaceURI: 'defaultNS').

		list add: each.
		self deny:
			(list
				includesAttributeNode: each name
				namespaceURI: 'defaultNS').
		self assert:
			(list
				includesAttributeNode: each name
				namespaceURI: '')].

	self deny:
		(list
			includesAttributeNode: self prefixedAttribute name
			namespaceURI: 'defaultNS').
	self deny:
		(list
			includesAttributeNode: self prefixedAttribute localName
			namespaceURI: 'defaultNS').
	self deny:
		(list
			includesAttributeNode: self prefixedAttribute name
			namespaceURI: '').
	self deny:
		(list
			includesAttributeNode: self prefixedAttribute localName
			namespaceURI: '').

	list add: self prefixedAttribute.
	self deny:
		(list
			includesAttributeNode: self prefixedAttribute name
			namespaceURI: 'defaultNS').
	self deny:
		(list
			includesAttributeNode: self prefixedAttribute localName
			namespaceURI: 'defaultNS').
	self assert:
		(list
			includesAttributeNode: self prefixedAttribute name
			namespaceURI: '').
	self assert:
		(list
			includesAttributeNode: self prefixedAttribute localName
			namespaceURI: '').