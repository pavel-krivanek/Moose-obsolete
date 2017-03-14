printing
printOn: stream

	stream nextPut: $(.
	args do: [ :each |
		stream print: each ]
		separatedBy: [ stream space; print: op; space ].
	stream nextPut: $).