public
annotatedFrequencyWithAmountOfIntervals: aSmallInteger 
	
	self sortObjectsAndDefineNumbers.	
	^ self annotatedFrequencyMin: self numbers min max: self numbers max amountOfIntervals: aSmallInteger