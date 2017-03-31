comparing
= aQueryResult 
	super = aQueryResult ifTrue: [^ true].
	self species == aQueryResult species ifFalse: [^ false].
	^ self storage = aQueryResult storage