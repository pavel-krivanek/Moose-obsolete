testing
testSomeUncluttering3 
	 
	| data uData last | 
	data := (OrderedCollection new) 
		add: 20; 
		add: 20; 
		add: 20; 
		add: 20; 
		add: 20; 
		add: 20; 
		add: 20; 
		add: 20; 
		add: 20; 
		yourself. 
	uData := (DudeUnclutterEngine new: data) 
		upperBound: 22; 
		unclutteredWith: 2. 
	self assert: (data == uData) not. 
	last := 22.	"upperBound" 
	uData do: [:n | self assert: last - n >= 2]