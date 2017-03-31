private
greaterThanOrEqualToNodeSet: aNodeSet
	^ aNodeSet minimumStringValueNumber
		ifNil: [false]
		ifNotNil: [:minimum |
			value anySatisfy: [:each |
				each stringValue asXPathNumber >= minimum]]