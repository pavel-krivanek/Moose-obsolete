accessing
connectionPoints: aPseudostate
	"The connection points defined for this StateMachine. They represent the interface of the StateMachine when used as part of submachine State"
	self connectionPoints
		removeAll;
		addAll: aPseudostate