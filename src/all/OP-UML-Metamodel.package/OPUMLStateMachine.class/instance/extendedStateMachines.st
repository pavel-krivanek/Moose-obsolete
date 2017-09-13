accessing
extendedStateMachines
	"The StateMachines of which this is an extension."
	^ extendedStateMachines ifNil: [ extendedStateMachines := OrderedCollection new ]