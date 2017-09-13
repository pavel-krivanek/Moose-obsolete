accessing
incomings: aTransition
	"Specifies the Transitions entering this Vertex."
	self incomings
		removeAll;
		addAll: aTransition