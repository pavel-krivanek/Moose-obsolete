as yet unclassified
resolveIds: dict 
	
	self isId ifTrue: [
		^ dict at: id ifAbsent: [ self error: 'unknown id: ', id ]
		].
	
	self error: 'cannot resolve url: ' , url
