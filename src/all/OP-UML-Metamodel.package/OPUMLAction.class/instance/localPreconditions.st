accessing
localPreconditions
	"A Constraint that must be satisfied when execution of the Action is started."
	^ localPreconditions ifNil: [ localPreconditions := OrderedCollection new ]