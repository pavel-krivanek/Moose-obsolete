printing
printQueryOn: aStream
	| atBeginning |

	self hasQuery
		ifFalse: [^ self].
	
	aStream nextPut: $?.
	atBeginning := true.
	self rawQuery do: [:each |
		atBeginning
			ifTrue: [atBeginning := false]
			ifFalse: [aStream nextPut: $&].
		aStream
			nextPutAll: each key;
			nextPut: $=;
			nextPutAll: each value].