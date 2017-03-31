test
testAddDuplicate
	
	| m |
	m := MalNameMapping new addAll: #(#a #b #c #d); yourself.
	self
		should: [m add: #a]
		raise: Error