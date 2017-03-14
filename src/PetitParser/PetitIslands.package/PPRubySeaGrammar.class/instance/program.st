grammar
program
	^ primary ==> [ :res | 
		res flatten 
	]