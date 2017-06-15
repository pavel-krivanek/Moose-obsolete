helper
newSimpleInstance
	^ self actualClass
		on:
			(FAMIXMethod new
				signature: 'A';
				name: 'A';
				yourself)
		withAll: #(1 2 3)