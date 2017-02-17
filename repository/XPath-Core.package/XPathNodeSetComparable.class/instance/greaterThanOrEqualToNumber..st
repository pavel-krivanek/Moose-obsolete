private
greaterThanOrEqualToNumber: aNumber
	^ value anySatisfy: [:each |
		each stringValue asXPathNumber >= aNumber]