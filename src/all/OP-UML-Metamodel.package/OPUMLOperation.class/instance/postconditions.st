accessing
postconditions
	"An optional set of Constraints specifying the state of the system when the Operation is completed."
	^ postconditions ifNil: [ postconditions := OrderedCollection new ]