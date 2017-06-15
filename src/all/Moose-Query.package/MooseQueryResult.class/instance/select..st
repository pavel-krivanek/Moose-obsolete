enumerating
select: aBlock
	^ (super select: aBlock)
		receiver: self receiver;
		yourself