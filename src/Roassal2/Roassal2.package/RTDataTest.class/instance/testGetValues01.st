tests
testGetValues01
	| ds |
	ds := RTData new.
	ds points: #(3 4 5).

	self assert: ds getValuesX asArray equals: #(1 2 3).
	self assert: ds getValuesY asArray equals: #(3 4 5).	