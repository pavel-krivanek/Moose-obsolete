enumerating
collect: aBlock
	^ (super collect: aBlock)
		receiver: self receiver;
		yourself