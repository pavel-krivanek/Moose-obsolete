tests - source
testSourceError
	| values |
	values := Array with: (1 -> 2)
		with: (1 -> 3)
		with: (3 -> 7).
	b := RTMondrian new.
	b shape box
		fillColor: Color transparent;
		borderColor: Color black.
	b shape text.
	b nodes: ((values collect: #key) , (values collect: #value)) asSet.
	b shape line color: Color red.
	self
		should: [ b edges source: self connectFrom: #key to: #value ]
		raise: AssertionFailure