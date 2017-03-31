as yet unclassified
testEquelWithApproximation2
	|cos|
	cos := (GCircle  center: (609/17)@(10837/136) radius: 38.27069133568686) cosBetween: 52@45 and: 74@74 .
	self
		assert: ((GCircle  center: ((609/17)@(10837/136)) radius: 38.27069133568686) 
		equal: 
		(GCircle  center: ((36819/1022)@(82249/1022)) radius: 38.90857726043159) withApproximation: cos)
		equals: false