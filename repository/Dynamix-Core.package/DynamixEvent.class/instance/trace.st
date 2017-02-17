accessing-derived
trace 
	"the assumption is that the root of an event tree is a trace entity"
	
	^ self parent notNil 
		ifTrue: [ self parent trace ]
		ifFalse: [ nil ]