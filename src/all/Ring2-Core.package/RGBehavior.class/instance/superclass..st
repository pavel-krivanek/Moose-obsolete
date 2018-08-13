accessing - backend
superclass: anRGBehavior

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior setSuperclassFor: self to: anRGBehavior ].