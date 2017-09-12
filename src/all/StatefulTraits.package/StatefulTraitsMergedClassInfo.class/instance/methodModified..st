events handling
methodModified: anEvent
	
	| method |
	
	method := anEvent newMethod.
	(self traits includes: method methodClass instanceSide) ifTrue: [ 
		self mergeMethod: method onClassSide: (method methodClass isClassSide). ].
	