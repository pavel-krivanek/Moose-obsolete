as yet unclassified
testCosBetweenAnd3
	self
		assert: ((GCircle  center: 0@0 radius: 15) cosBetween: 15 @ 0 and: 15 @ 0 )
		equals: 1