meta messages
perform: aSymbol withArguments: arguments

	^GHCurrentMetaLevelDepth decreaseFor: [ 	
		GHMetaMessages 
			withReceiver: ghost 
			perform: aSymbol 
			withArguments: arguments] 