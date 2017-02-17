testing
includes: aFunction
	^ (functionsByName
		at: aFunction prototypeName
		ifAbsent: [^ false]) == aFunction