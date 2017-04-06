events handling
methodRemoved: anEvent
	
	| method |
	
	method := anEvent method.
	(self traits includes: method methodClass instanceSide) ifTrue: [ 
		method methodClass isClassSide
			ifFalse: [ mergedClass removeSelector: method selector ]
			ifTrue: [ mergedClass class removeSelector: method selector   ].].
	