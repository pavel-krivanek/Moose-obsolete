instance creation
newWithTriggerOnStart: startBlock onEnd: endBlock onIncrement: incrBlock 
	 
	^(super new) 
		triggerOnStart: startBlock onEnd: endBlock onIncrement: incrBlock; 
		stepCount: 0; 
		triggerCount: 1; 
		yourself