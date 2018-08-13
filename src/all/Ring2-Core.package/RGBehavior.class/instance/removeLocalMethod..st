accessing - backend
removeLocalMethod: anRGMethod 

	(anRGMethod package = self package)
		ifFalse: [ anRGMethod package removeExtensionMethod:  anRGMethod ].
		
	self backend forBehavior removeLocalMethod: anRGMethod from: self.
	
	self announcer methodRemoved: anRGMethod.
