accessing
rtValue: anObject
	| index temp |
	index := objects indexOf: (command rtValue: anObject).
	
	"If the object is not part of the range of objects to consider, then we use a default color"
	index = 0 ifTrue: [ ^ self defaultColor ].
	temp := objects size -1.
	temp := temp = 0
		ifTrue: [ 1 ]
		ifFalse: [ (index -1 )/temp ].
	^ self level: temp