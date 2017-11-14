infecting
heal: anObject
	anObject ghMutation == self ifFalse: [ 
		anObject ghMutation == nil ifTrue: [ ^self ].
		self error: 'I cant heal object which was infected by sombody else!'
	].
	
	GHMetaMessages setClass: self victimClass to: anObject