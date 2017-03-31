printing
printTypesOn: aStream
	self types
		do: [:each | aStream print: each]
		separatedBy: [aStream nextPutAll: ' , ']