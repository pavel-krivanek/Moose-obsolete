accessing
removeFromModel 
	 
	^self mooseModel isNil 
		ifTrue: [self] 
		ifFalse: [self mooseModel removeEntity: self]