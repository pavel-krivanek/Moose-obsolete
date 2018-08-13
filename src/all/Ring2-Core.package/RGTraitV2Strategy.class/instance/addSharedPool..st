private - backend access
addSharedPool: anRGPoolVariable

	self owner announceDefinitionChangeDuring: [ 
		self privAddSharedPool: anRGPoolVariable ].