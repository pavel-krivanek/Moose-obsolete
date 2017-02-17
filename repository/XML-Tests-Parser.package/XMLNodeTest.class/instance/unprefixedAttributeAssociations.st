accessing
unprefixedAttributeAssociations
	^ self attributeAssociations collect: [:each |
		each key xmlLocalNameAfterPrefix -> each value]