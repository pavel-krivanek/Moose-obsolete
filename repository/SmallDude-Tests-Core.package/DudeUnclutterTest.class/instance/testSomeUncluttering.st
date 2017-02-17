testing
testSomeUncluttering 
	 
	| data uData last | 
	data := (OrderedCollection new) 
		add: 20; 
		add: 13; 
		add: 12; 
		add: 11; 
		add: 10; 
		add: 9; 
		add: 8; 
		add: 7; 
		add: 0; 
		yourself. 
	uData := (DudeUnclutterEngine new: data) 
		upperBound: 22; 
		unclutteredWith: 2. 
	self assert: (data == uData) not. 
	last := 22.	"upperBound" 
	uData do: [:n | self assert: last - n >= 2]