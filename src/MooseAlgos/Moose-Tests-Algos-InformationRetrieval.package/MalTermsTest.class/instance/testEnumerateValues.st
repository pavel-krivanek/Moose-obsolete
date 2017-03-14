running
testEnumerateValues
	
	terms := MalTerms sample.
	terms termsDo: [:each | self assert: each isString]