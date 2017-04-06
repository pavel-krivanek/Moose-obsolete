events handling
methodAdded: anEvent
	
	| method |
	
	method := anEvent method.
	(self traits includes: method methodClass instanceSide) ifTrue: [ 
		self mergeMethod: method onClassSide: (method methodClass isClassSide). ].
	