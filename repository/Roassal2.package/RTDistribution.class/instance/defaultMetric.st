public
defaultMetric
	"This block define the metric to apply to the object"
	
	self metric ifNil: [ 
		(self objects first isKindOf: Number) ifTrue: [ 
			self metric: #yourself ] ifFalse: [ self metric: [:o | o hash] ]
		]