printing
printDeclarationsOn: aStream
	| isFirst |

	isFirst := true.
	self prefixesAndURIsDo: [:prefix :uri |
		isFirst 
			ifTrue: [isFirst := false]
			ifFalse: [aStream space].
		aStream nextPutAll: 'xmlns'.
		prefix
			ifNotEmpty: [
				aStream
					nextPut: $:;
					nextPutAll: prefix].
		aStream
			nextPut: $=;
			nextPut: $";
			nextPutAll: uri;
			nextPut: $"].