as yet unclassified
testEquelWithApproximation
	|cos|
	cos := (GCircle  center: (609/17)@(10837/136) radius: 38.27069133568686) cosBetween: 74@72 and: 74@74 .
	self
		assert: ((GCircle  center: ((609/17)@(10837/136)) radius: 38.27069133568686) 
		equal: 
		(GCircle  center: ((36819/1022)@(82249/1022)) radius: 38.90857726043159) withApproximation: cos)
		equals: true