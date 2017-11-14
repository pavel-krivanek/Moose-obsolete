message interception
intercept: aMessage to: anObject
		
	^(self isMetaMessage: aMessage)
		ifTrue: [ self executeMetaMessage: aMessage on: anObject  ]
	 	ifFalse: [ self send: aMessage to: anObject  ]