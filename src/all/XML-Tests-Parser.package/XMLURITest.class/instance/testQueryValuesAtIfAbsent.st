tests
testQueryValuesAtIfAbsent
	self allURIStringsDo: [:uriString | | uri valuesForKeys |
		uri := uriString asXMLURI.
		valuesForKeys := Dictionary new.
		uri query do: [:each |
			(valuesForKeys
				at: each key
				ifAbsentPut: [OrderedCollection new])
					addLast: each value].
		valuesForKeys keysAndValuesDo: [:key :values |
			self assert:
				(uri
					queryValuesAt: key
					ifAbsent: [self fail]) = values].
		self assert:
			(uri
				queryValuesAt: 'absent'
				ifAbsent: [#()]) = #()]