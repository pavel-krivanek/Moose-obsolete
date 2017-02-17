printing
printOn: aStream
	(self type notNil) ifTrue: [
		aStream
			nextPutAll: (self type name first isVowel ifTrue: [ 'an ' ] ifFalse: [ 'a ' ]);
			nextPutAll: self type name;
			space;
			nextPut: ${;
			nextPutAll: self name;
			nextPut: $}]
	ifFalse: [ aStream nextPutAll: 'Class not in Model'].