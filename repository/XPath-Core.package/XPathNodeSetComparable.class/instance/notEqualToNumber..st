private
notEqualToNumber: aNumber
	^ value anySatisfy: [:each |
		each stringValue asXPathNumber ~= aNumber]