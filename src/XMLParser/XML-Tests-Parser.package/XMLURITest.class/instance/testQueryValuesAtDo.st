tests
testQueryValuesAtDo
	self allURIStringsDo: [:uriString | | uri valuesForKeys |
		uri := uriString asXMLURI.
		valuesForKeys := Dictionary new.
		uri query do: [:each |
			(valuesForKeys
				at: each key
				ifAbsentPut: [OrderedCollection new])
					addLast: each value].
		valuesForKeys keysAndValuesDo: [:key :values | | enumerated |
			enumerated := OrderedCollection new.
			self assert:
				(uri
					queryValuesAt: key
					do: [:each | enumerated addLast: each]) == uri.
			self assert: enumerated = values]]