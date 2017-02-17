public
annotatedFrequencyMin: numMin max: numMax amountOfIntervals: aNbOfIntervals
	"	Return a list of elements, each following the template:
	{numberOfElementOfV . V} "
	| fr result |	

	fr := self frequencyMin: numMin max: numMax amountOfIntervals: aNbOfIntervals.
	
	result := fr collect: [ :f | Array with: f size with: f ].
	
	^ result asArray
	