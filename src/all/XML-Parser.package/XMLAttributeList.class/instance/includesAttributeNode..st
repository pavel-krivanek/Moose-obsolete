testing
includesAttributeNode: aName
	self
		attributeNodeAt: aName
		ifAbsent: [^ false].
	^ true.