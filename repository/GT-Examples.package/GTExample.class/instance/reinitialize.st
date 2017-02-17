initializing
reinitialize
	| method |
	(method := self method) ifNil: [ ^ self ].
	
	self initialize.
	method gtExamplesFactory initializeExample: self fromMethod: method