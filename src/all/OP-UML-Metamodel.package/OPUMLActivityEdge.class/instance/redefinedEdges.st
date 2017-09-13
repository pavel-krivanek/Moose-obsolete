accessing
redefinedEdges
	"ActivityEdges from a generalization of the Activity containing this ActivityEdge that are redefined by this ActivityEdge."
	^ redefinedEdges ifNil: [ redefinedEdges := OrderedCollection new ]