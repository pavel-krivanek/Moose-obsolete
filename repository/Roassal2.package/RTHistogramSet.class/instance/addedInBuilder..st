hooks
addedInBuilder: aBuilder
	"Really ugly method. This will be fixed soon!"

	super addedInBuilder: aBuilder.
	
	distribution on: self points; metric: x.
	
	((self points first isKindOf: Number) not & (x = #yourself )) ifTrue: [ 
		distribution metric: nil.
		 ].
	 
	self points: (distribution annotatedFrequencyWithAmountOfIntervals: (self nbOfIntervals rtValue: points)).
	
	self y: #first.
	
	self barShape width: builder extent x / self points size.
	
	builder axisX noTick; noLabel.

	