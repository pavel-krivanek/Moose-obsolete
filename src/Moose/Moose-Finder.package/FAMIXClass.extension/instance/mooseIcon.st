*Moose-Finder
mooseIcon
	^ self isInterface 
		ifTrue: [ MooseIcons famixInterface ]
		ifFalse: [ MooseIcons famixClass ]