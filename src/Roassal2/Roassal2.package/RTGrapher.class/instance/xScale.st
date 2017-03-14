accessing
xScale
	"Return the scale transformation that should be used for the X-axis"
	| s |
	s := datasets collect: #xScale.
	s := s asSet.
	self assert: [ s size = 1 ] description: 'You are trying to have more than one data set with different scale. Please, homogeneize'.
	^ s anyOne