as yet unclassified
testPointIsTooCloseTo1
	self
		assert: ((GCircle  center: (609/17)@(10837/136) radius: 38.27069133568686) point: 74@72 isTooCloseTo: 52@45 )
		equals: false