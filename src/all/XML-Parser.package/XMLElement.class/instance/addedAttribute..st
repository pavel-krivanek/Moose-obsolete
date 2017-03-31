notifying
addedAttribute: anAttribute
	anAttribute element
		ifNotNil: [:element |
			element == self
				ifFalse: [element removeAttributeNode: anAttribute]].
	anAttribute element: self.
	self validateAttributeNamespacePrefixes.