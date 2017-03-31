testing
testNoUnclutterNeeded 
	 
	| data uData | 
	data := (OrderedCollection new) 
		add: 10; 
		add: 8; 
		add: 6; 
		add: 4; 
		add: 2; 
		add: 0; 
		yourself. 
	uData := (DudeUnclutterEngine new: data) 
		upperBound: 12; 
		unclutteredWith: 2. 
	self assert: data == uData