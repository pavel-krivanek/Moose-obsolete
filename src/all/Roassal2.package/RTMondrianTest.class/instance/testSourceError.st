tests - source
testSourceError
	| values |
	values := {(1 -> 2).
	(1 -> 3).
	(3 -> 7)}.
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