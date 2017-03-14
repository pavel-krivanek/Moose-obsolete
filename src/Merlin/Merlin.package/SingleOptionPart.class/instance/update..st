updating
update: aChange

	(self options includes: aChange) ifTrue: [
		(self modelOfOption: aChange) contents 
			ifTrue: [self selectOption: aChange]
			ifFalse: [self unselectOption: aChange]   
		]