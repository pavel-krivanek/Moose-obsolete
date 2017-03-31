running
testEnumerate
	
	terms := MalTerms sample.
	terms do: [:each | self assert: each isString]