test
testNames
	
	| m |
	m := MalNameMapping new addAll: #(#a #b #c #d); yourself.
	self assert: (m equalsTo: #(1 2 3 4)).
	self assert: (m names equalsTo: #(#a #b #c #d))