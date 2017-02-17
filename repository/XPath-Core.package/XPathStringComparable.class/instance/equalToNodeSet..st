private
equalToNodeSet: aNodeSet
	^ aNodeSet anySatisfy: [:each |
		value = each stringValue]