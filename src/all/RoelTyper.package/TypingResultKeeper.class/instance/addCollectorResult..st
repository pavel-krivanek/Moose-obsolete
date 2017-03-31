private
addCollectorResult: collectorResult
	collectorResult isEmpty ifTrue: [^self].
	typeResults
		at: collectorResult values first ivarClass
		put: collectorResult