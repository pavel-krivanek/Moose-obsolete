accessing
secondsSinceLastTrigger 
	 
	lastTriggerTime isNil ifTrue: [^0]. 
	^Time secondClock - lastTriggerTime