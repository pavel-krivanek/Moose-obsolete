printing
printUserInfoOn: aStream
	self hasUserInfo
		ifTrue: [
			aStream
				nextPutAll: self rawUserInfo;
				nextPut: $@]