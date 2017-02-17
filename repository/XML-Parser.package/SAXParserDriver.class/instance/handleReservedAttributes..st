private
handleReservedAttributes: aDictionary
	aDictionary
		at: 'xml:base'
		ifPresent: [:uri |
			"expand the new base URI using the current"
			aDictionary
				at: 'xml:base'
				put: (self baseURI asXMLURI / uri) asString].
	self isValidating
		ifTrue: [self validator validateXMLIDAttributeIn: aDictionary].

	self elementNester
		setScopedAttributesNamed: self scopedAttributeNames
		from: aDictionary.

	self haveNoUnhandledReservedAttributes.