updating
update: aChange

	(self options includes: aChange) ifTrue: [
		self hasChanged: (aChange -> (self modelOfOption: aChange) contents)  
		] 