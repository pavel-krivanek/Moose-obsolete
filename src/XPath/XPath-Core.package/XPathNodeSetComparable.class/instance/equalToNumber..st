private
equalToNumber: aNumber
	^ value anySatisfy: [:each |
		each stringValue asXPathNumber = aNumber]