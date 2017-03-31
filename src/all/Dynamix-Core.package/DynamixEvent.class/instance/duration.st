accessing
duration
	"the duration between the start and stop of the activation.
	we are checking for the duration first, because some importers
	can possibly only set the duration instead of populating
	the start and stop time"
	
	^ duration ifNil: [
		duration := (self start notNil and: [self stop notNil]) 
			ifTrue: [self stop - self start]
			ifFalse: [-1] ]