removing
remove: aFunction ifAbsent: aBlock
	^ (self includes: aFunction)
		ifTrue: [
			functionsByName
				removeKey: aFunction prototypeName
				ifAbsent: aBlock]
		ifFalse: [aBlock value]