vector functions
dotProduct: aVector
	
	| sum otherValueBlock |
	(aVector hasSize: self size) ifFalse: [^self noMatchError].
	sum := 0.
	otherValueBlock := aVector == self
		ifTrue: [[:each :index | each]]
		ifFalse: [[:each :index | aVector at: index]].
	self
		doSparseWithIndex:
			[:each :index | sum := sum + (each * (otherValueBlock value: each value: index))].
	^sum