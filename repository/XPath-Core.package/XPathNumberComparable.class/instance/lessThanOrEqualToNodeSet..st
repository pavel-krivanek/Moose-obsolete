private
lessThanOrEqualToNodeSet: aNodeSet
	^ aNodeSet anySatisfy: [:each |
		value <= each stringValue asXPathNumber]