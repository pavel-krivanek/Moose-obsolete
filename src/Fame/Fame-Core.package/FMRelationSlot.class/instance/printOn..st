printing
printOn: aStream
	aStream 
		store: self name;
		nextPutAll: ' => ';
		nextPutAll: self class name.
	aStream
		nextPutAll: ' type: ';
		store: self targetClassName.
	self hasInverse 
		ifTrue: [ 
			aStream
				nextPutAll: ' opposite: ';
				store: inverseName ].
