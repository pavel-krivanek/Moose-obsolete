tests
testSort
	| sorted group |
	group := MooseGroup withAll: #(4 3 1 2).
	sorted := group sorted: [ :a :b | a < b ].
	self assert: sorted entities asArray equals: #(1 2 3 4)