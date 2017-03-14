tests
testGetDictionaryValues
	| ds |
	ds := RTData new.
	ds
		points:
			(Array with: (Dictionary with: #a -> 12 with: #b -> 7) with: 
			(Dictionary with: #a -> 2 with: #b -> 3)).
	ds x: #a.
	ds y: #b.
	self assert: ds getValuesX asArray equals: #(12 2).
	self assert: ds getValuesY asArray equals: #(7 3)