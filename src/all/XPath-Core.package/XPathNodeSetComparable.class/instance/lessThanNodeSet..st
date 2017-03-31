private
lessThanNodeSet: aNodeSet
	^ aNodeSet maximumStringValueNumber
		ifNil: [false]
		ifNotNil: [:maximum |
			value anySatisfy: [:each |
				each stringValue asXPathNumber < maximum]]