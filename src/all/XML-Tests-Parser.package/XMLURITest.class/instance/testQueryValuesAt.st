tests
testQueryValuesAt
	self allURIStringsDo: [:uriString | | uri valuesForKeys |
		uri := uriString asXMLURI.
		valuesForKeys := Dictionary new.
		uri query do: [:each |
			(valuesForKeys
				at: each key
				ifAbsentPut: [OrderedCollection new])
					addLast: each value].
		valuesForKeys keysAndValuesDo: [:key :values |
			self assert: (uri queryValuesAt: key) = values].
		self assert:
			(uri queryValuesAt: 'absent') = OrderedCollection new]