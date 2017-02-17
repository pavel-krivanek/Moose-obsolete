private
shouldPass
	^ super shouldPass and: [ (givenNotGiven = true) not ]