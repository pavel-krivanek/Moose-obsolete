private
lessThanOrEqualToNumber: aNumber
	^ value anySatisfy: [:each |
		each stringValue asXPathNumber <= aNumber]