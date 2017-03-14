default
default 
	 
	^(self 
		newWithTriggerOnStart: [:observer | ] 
		onEnd: [:observer | ] 
		onIncrement: [:observer | ]) 
		triggerCount: 1; 
		yourself