*PetitYAML
YAMLN
	self indentStack isEmpty ifTrue: [ ^ 1 ].
	^ self indentStack top column