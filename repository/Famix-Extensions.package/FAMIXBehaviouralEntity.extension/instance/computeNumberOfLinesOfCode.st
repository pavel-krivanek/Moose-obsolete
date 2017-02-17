*Famix-Extensions-private
computeNumberOfLinesOfCode
	self hasSourceAnchor 
		ifTrue: [ ^ self sourceAnchor lineCount ].
	^ (self sourceText = '')
			ifTrue: [ self notExistentMetricValue ]
			ifFalse: [ self sourceText lineCount ]