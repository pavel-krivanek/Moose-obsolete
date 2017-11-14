meta level
executeMetaMessage: aMessage on: anObject  
	
	^GHCurrentMetaLevelDepth increaseFor: [ 
		self currentMetaLevel executeMetaMessage: aMessage on: anObject 
	]