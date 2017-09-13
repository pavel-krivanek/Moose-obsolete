accessing
stateInvariant: aConstraint
	"Specifies conditions that are always true when this State is the current State. In ProtocolStateMachines state invariants are additional conditions to the preconditions of the outgoing Transitions, and to the postcondition of the incoming Transitions."
	stateInvariant := aConstraint