accessing
preconditions
	"An optional set of Constraints on the state of the system when the Operation is invoked."
	^ preconditions ifNil: [ preconditions := OrderedCollection new ]