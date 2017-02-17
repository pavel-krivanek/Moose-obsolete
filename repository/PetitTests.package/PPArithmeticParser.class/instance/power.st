grammar
power
	^ (primary separatedBy: $^ asParser trim)
		foldRight: [ :a :op :b | a raisedTo: b ]