private - backend access
removeSharedPool: anRGPoolVariable

	self owner announceDefinitionChangeDuring: [ 
		self backend forBehavior removeSharedPool: anRGPoolVariable from: self owner].