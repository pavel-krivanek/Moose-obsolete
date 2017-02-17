private
greaterThanOrEqualToNodeSet: aNodeSet
	^ aNodeSet anySatisfy: [:each |
		value >= each stringValue asXPathNumber]