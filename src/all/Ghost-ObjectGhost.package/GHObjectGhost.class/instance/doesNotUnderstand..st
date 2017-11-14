dispatching
doesNotUnderstand: aMessage 
	
	^self ghostBehaviour intercept: aMessage to: self