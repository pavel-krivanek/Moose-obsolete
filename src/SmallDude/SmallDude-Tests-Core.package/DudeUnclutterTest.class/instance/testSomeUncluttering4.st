testing
testSomeUncluttering4 
	 
	| data uData last | 
	data := (OrderedCollection new) 
		add: 50; 
		add: 60; 
		add: 70; 
		add: 50; 
		add: 60; 
		add: 70; 
		add: 50; 
		add: 60; 
		add: 70; 
		yourself. 
	uData := (DudeUnclutterEngine new: data) 
		upperBound: 22; 
		unclutteredWith: 2. 
	self assert: (data == uData) not. 
	last := 22.	"upperBound" 
	uData do: [:n | self assert: last - n >= 2]