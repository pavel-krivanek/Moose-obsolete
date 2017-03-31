public
annotatedFrequency
	"Return a list of elements, each following the template:
	{numberOfV . v} "
	| fr result |
	
	self sortObjectsAndDefineNumbers.
	fr := self frequencyMin: self numbers min max: self numbers max amountOfIntervals: self defaultNumberOfIntervals.
	
	result := fr collect: [ :f | Array with: f size with: f ].
	
	^ result asArray