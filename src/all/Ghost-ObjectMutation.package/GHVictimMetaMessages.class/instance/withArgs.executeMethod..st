meta messages
withArgs: argArray executeMethod: compiledMethod
	
	^GHCurrentMetaLevelDepth decreaseFor: [ 	
		GHMetaMessages executeWith: ghost andArguments: argArray method: compiledMethod]