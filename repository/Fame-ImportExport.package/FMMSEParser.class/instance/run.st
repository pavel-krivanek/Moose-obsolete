running
run
	increments := 0.
	UIManager default
		displayProgress: 'Parsing ', self stream localName
		from: 1 
		to: self stream size 
		during: [ :bar | progBar := bar. self basicRun].
