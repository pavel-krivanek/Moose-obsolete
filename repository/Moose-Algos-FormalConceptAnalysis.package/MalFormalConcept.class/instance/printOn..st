printing
printOn: stream
	
	stream
		nextPut: ${;
		nextPut: ${.
	self objects
		do: [:each | stream print: each]
		separatedBy:
			[stream
				nextPut: $,;
				space].
	stream
		nextPut: $};
		nextPut: $,;
		space;
		nextPut: ${.
	self attributes
		do: [:each | stream print: each]
		separatedBy:
			[stream
				nextPut: $,;
				space].
	stream
		nextPut: $};
		nextPut: $}