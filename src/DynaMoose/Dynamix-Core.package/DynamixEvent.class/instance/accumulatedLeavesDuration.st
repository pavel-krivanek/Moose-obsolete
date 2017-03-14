accessing-derived
accumulatedLeavesDuration
	<MSEProperty: #accumulatedLeavesDuration type: #Number> <derived>
	<MSEComment: 'This is a derived measure of duration that simply sums up the duration of all leaves'>
	| sum |
	sum := 0.
	self withAllChildrenDo: [:each | 
		each isLeaf ifTrue: [ sum := sum + each duration ]].
	^ sum