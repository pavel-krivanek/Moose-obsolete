accessing-dynamic
theSubclasses
	^ self exists 
		ifFalse: [ {  } ]
		ifTrue: [ self theClass allSubclasses ]