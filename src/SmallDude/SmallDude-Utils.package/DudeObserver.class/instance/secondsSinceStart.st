accessing
secondsSinceStart 
	 
	startTime isNil ifTrue: [^0]. 
	^Time secondClock - startTime