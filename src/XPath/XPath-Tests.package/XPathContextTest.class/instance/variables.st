accessing
variables
	^ Dictionary new
		at: 'one' put: '1';
		at: 'two' put: 2;
		at: 'three' put: self newNodeSet;
		yourself