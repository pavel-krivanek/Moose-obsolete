accessing
events
	"The DurationObservation is determined as the duration between the entering or exiting of a single event Element during execution, or the entering/exiting of one event Element and the entering/exiting of a second."
	^ events ifNil: [ events := OrderedCollection new ]