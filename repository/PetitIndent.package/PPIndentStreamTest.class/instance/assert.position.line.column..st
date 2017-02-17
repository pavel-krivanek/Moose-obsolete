asserting
assert: aPPStream position: position   line: line  column: col
	
	self assert: (aPPStream  line: position) = line .
	self assert: (aPPStream  column: position) = col  .