meta level
executeMetaMessage: aMessage on: infectedObject

	^GHCurrentMetaLevelDepth increaseFor: [ 
		(OverridenMetaLevel isMetaMessage: aMessage)
			ifTrue: [ ^OverridenMetaLevel executeMetaMessage: aMessage on: infectedObject ]
			ifFalse: [ GHVictimMetaMessages executeOriginalMethodOf: infectedObject for: aMessage ]
	]