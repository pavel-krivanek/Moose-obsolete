meta level
isMetaMessage: aMessage

	GHCurrentMetaLevelDepth value > 0 ifTrue: [ ^true ]. 
	
	^self currentMetaLevel isMetaMessage: aMessage