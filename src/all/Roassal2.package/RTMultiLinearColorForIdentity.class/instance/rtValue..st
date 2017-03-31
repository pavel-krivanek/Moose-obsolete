accessing
rtValue: anObject
	| index |
	index := objects indexOf: (command rtValue: anObject).
	
	"If the object is not part of the range of objects to consider, then we use a default color"
	index = 0 ifTrue: [ ^ self defaultColor ].
	
	^ self level: (index - 1 / objects size)