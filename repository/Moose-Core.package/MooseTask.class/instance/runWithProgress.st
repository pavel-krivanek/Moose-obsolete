running
runWithProgress 
	 
	| result | 
	[self setUp. 
	nb := 0.
	UIManager default
		displayProgress: self description
		from: 1 
		to: self length 
		during: [ :bar | progBar := bar. result := self basicRun]]
			 ensure: [self tearDown]. 
	^result