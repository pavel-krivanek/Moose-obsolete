printing
printAuthorityOn: aStream
	self hasAuthority
		ifTrue: [
			self
				printUserInfoOn: aStream;
				printHostOn: aStream;
				printPortOn: aStream]