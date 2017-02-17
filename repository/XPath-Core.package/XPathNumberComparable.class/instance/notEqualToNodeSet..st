private
notEqualToNodeSet: aNodeSet
	^ aNodeSet anySatisfy: [:each |
		value ~= each stringValue asXPathNumber]