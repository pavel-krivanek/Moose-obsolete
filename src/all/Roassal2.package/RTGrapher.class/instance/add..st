public - adding
add: aDataSet
	"Essential method. Add a dataset into the grapher. Only non-empty set are considered"
	self assert: [ (aDataSet isKindOf: RTAbstractData) or: [ aDataSet isKindOf: RTAbstractDataSet ]] description: 'Wrong argument'.
	aDataSet numberOfPoints = 0 ifTrue: [ ^ self ].
	
	datasets add: aDataSet.
	aDataSet addedInBuilder: self