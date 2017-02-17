running
run 
	 
	| result | 
	[self setUp. 
	result := self basicRun] ensure: [self tearDown]. 
	^result