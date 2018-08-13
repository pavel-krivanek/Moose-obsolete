private - backend interface
pvtSuperclass: anRGBehavior

	anRGBehavior ifNotNil: [ 
		self environment verifyOwnership: anRGBehavior.].

	^ superclass := anRGBehavior
	