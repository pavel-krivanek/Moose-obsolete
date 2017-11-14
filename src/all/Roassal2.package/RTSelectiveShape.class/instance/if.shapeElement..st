accessing
if: block shapeElement: block2
	| oldShape |
	oldShape := self shapeElement.
	^ self shapeElement: [ :e | (block rtValue: e) 
		ifTrue: [ block2 rtValue: e ]
		ifFalse: [ oldShape rtValue: e ] ]