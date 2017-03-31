printing
printHostOn: aStream
	self hasHost
		ifTrue: [aStream nextPutAll: self rawHost]