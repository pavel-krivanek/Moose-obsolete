testing
matchesExample: aGTExample
	^ self exists 
		and: [ aGTExample isGTExample
			and: [ aGTExample methodClass = self methodClass
				and: [ aGTExample selector = self selector ] ] ]