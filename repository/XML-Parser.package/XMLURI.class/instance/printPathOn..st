printing
printPathOn: aStream
	self rawPathSegments
		do: [:each | aStream nextPutAll: each]
		separatedBy: [aStream nextPut: $/]