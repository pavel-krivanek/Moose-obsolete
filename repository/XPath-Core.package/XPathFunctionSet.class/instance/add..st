adding
add: aFunction
	^ functionsByName
		at: aFunction prototypeName
		put: aFunction