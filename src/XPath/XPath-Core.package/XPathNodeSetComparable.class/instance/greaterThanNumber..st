private
greaterThanNumber: aNumber
	^ value anySatisfy: [:each |
		each stringValue asXPathNumber > aNumber]