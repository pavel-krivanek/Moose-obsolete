accessing
connections: aConnectionPointReference
	"The entry and exit connection points used in conjunction with this (submachine) State, i.e., as targets and sources, respectively, in the Region with the submachine State. A connection point reference references the corresponding definition of a connection point Pseudostate in the StateMachine referenced by the submachine State."
	self connections
		removeAll;
		addAll: aConnectionPointReference