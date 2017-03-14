private-accessing
compiledMethod
	
	| selector mooseEntity realSTClass |
	mooseEntity := self methodEntity. 
	selector := mooseEntity name.
	realSTClass := (mooseEntity hasClassScope and: [self stClass class ~= Metaclass])
		ifTrue: [self stClass class]
		ifFalse: [self stClass].
	^ realSTClass methodDict at: selector