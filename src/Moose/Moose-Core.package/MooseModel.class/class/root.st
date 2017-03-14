root model
root 
	 
	^ rootModel 
		ifNil: 
			[ rootModel := (self new) 
				name: 'Root'; 
				yourself ]