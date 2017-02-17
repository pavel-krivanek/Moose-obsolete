as yet unclassified
test
	self
		assert: ((GCircle  center: (609/17)@(10837/136) radius: 38.27069133568686) boundaryContains: (5@57))
		equals: true.
		
	self
		assert: ((GCircle  center: (609/17)@(10837/136) radius: 38.27069133568686) boundaryContains: (74@77))
		equals: true.
		
	self
		"assert: ((GCircle  center: (609/17)@(10837/136) radius: 38.27069133568686) boundaryContains: ((74@72)))
		equals: true."