private
lessThanNodeSet: aNodeSet
	^ aNodeSet anySatisfy: [:each |
		value < each stringValue asXPathNumber]