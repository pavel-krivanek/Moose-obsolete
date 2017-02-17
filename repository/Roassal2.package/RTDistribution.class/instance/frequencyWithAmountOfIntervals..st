public
frequencyWithAmountOfIntervals: aSmallInteger 
	
	self sortObjectsAndDefineNumbers.
	^ self frequencyMin: self numbers min max: self numbers max amountOfIntervals: aSmallInteger