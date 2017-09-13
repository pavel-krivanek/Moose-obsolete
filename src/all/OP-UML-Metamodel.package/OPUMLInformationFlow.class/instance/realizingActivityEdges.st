accessing
realizingActivityEdges
	"Determines which ActivityEdges will realize the specified flow."
	^ realizingActivityEdges ifNil: [ realizingActivityEdges := OrderedCollection new ]