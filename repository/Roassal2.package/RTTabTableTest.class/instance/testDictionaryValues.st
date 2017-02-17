tests
testDictionaryValues
	tab
		input:
			'm1	m2	m3
A	1	2
B	4	9'.
	tab removeFirstRow.
	self
		assert: tab dictionaryValues
		equals:
			(Array with: (OrderedDictionary with: #m1 -> 'A' with: #m2 -> '1' with: #m3 -> '2') with: 
			(OrderedDictionary with: #m1 -> 'B' with: #m2 -> '4' with: #m3 -> '9'))