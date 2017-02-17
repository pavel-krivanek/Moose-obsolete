properties
alreadyExistIn: aSet 
 	aSet do:[:eachS | (eachS asLine = (self asLine) )ifTrue:[ ^ true ]].
	^ false