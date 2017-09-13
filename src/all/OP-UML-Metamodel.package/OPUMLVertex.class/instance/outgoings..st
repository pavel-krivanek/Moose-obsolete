accessing
outgoings: aTransition
	"Specifies the Transitions departing from this Vertex."
	self outgoings
		removeAll;
		addAll: aTransition