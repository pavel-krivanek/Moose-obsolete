enumerating
reject: aBlock
	^ (super reject: aBlock)
		receiver: self receiver;
		yourself