infecting
mutate: anObject

	anObject ghMutation ifNotNil: [ :existedMutation |
		existedMutation == self ifTrue: [ ^self ].
		self error: 'I cant infect infected object!'].
	
	self victimClass: anObject class.
	anObject injectGHMutation: self