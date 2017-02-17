private
greaterThanNodeSet: aNodeSet
	^ aNodeSet anySatisfy: [:each |
		value > each stringValue asXPathNumber]