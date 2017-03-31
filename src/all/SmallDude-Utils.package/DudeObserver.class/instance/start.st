observation
start 
	 
	self reset. 
	startTime := Time secondClock. 
	startTrigger value: self. 
	lastTriggerTime := Time secondClock