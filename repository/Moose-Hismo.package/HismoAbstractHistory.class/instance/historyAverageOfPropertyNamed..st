properties
historyAverageOfPropertyNamed: aPropertyName
	
	| sum |
	self isEmpty ifTrue: [^0].
	sum := self versions
		inject: 0
		into: [:s :each | s + (each propertyNamed: aPropertyName)].
	^(sum / self size) asFloat