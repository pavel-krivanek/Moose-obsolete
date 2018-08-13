accessing - backend
addLocalMethod: anRGMethod

	self backend forBehavior addLocalMethod: anRGMethod to: self.
	
	self announcer methodAdded: anRGMethod.
