accessing
transitions: aTransition
	"The set of Transitions owned by the Region."
	self transitions
		removeAll;
		addAll: aTransition