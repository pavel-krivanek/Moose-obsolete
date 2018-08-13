private - backend access
allClassVarNames

	^self allClassVariables collect:[ :cvar| cvar name ]