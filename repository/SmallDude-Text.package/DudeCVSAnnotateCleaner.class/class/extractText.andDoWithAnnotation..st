parsing
extractText: aString andDoWithAnnotation: aBlockThatUsesTheAnnotation 
	 
	| annoEnd anno text | 
	annoEnd := aString indexOfSubCollection: '): ' startingAt: 1. 
	anno := aString sliceTo: annoEnd. 
	text := aString sliceFrom: annoEnd + 3. 
	aBlockThatUsesTheAnnotation value: anno. 
	^text