instance creation
with: anEntity 
	 
	^anEntity isNil 
		ifTrue: [self new] 
		ifFalse: [self withAll: (Array with: anEntity)]