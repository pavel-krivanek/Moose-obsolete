accessing
localPostconditions
	"A Constraint that must be satisfied when execution of the Action is completed."
	^ localPostconditions ifNil: [ localPostconditions := OrderedCollection new ]