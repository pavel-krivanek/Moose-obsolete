tests
testGrouped
	tab
		input:
			'm1	m2	m3
A	1	2
A	3	7
B	2	5
B	4	9'.
	tab removeFirstRow.
	tab convertColumnsAsInteger: #(m2 m3).
	self
		assert: (tab valuesGroupedBy: #m1)
		equals:
			(Array with: ('A'
				->
					(Array
						with: (OrderedDictionary with: #m1 -> 'A' with: #m2 -> 1 with: #m3 -> 2)
						with: (OrderedDictionary with: #m1 -> 'A' with: #m2 -> 3 with: #m3 -> 7)))
			with: ('B'
				->
					(Array
						with: (OrderedDictionary with: #m1 -> 'B' with: #m2 -> 2 with: #m3 -> 5)
						with: (OrderedDictionary with: #m1 -> 'B' with: #m2 -> 4 with: #m3 -> 9))))
				asDictionary