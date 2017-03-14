private
lastCharIn: aStream
	^ aStream position = 0 ifFalse: [ aStream skip: -1; next ]