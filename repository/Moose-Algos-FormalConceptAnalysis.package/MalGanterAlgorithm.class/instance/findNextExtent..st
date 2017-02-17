algorithm
findNextExtent: extent
	
	context objects size
		to: 1
		by: -1
		do:
			[:index | 
			| nextExtent |
			nextExtent := self closureFor: (extent copyUpToPlusIndex: index).
			(nextExtent upToPlusIndex: index isLargerThan: extent)
				ifTrue: [^nextExtent]].
	self error: nil