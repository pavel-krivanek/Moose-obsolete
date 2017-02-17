private
normalizedDistanceSource: sourceString target: targetString 
	 
	| sourceSize targetSize | 
	sourceSize := sourceString size. 
	targetSize := targetString size.
	^[(self levenshteinDistanceSource: sourceString target: targetString) 
		asFloat / (sourceSize max: targetSize)] on:ZeroDivide do: [ 0 ]