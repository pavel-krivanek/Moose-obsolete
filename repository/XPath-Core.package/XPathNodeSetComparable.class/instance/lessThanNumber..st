private
lessThanNumber: aNumber
	^ value anySatisfy: [:each |
		each stringValue asXPathNumber < aNumber]