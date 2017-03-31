observation
start: expectedNumberOfSteps 
	 
	self reset. 
	self stepCount: expectedNumberOfSteps. 
	startTrigger value: self. 
	lastTriggerTime := Time secondClock