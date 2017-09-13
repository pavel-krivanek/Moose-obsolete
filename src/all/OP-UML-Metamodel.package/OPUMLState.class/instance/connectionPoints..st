accessing
connectionPoints: aPseudostate
	"The entry and exit Pseudostates of a composite State. These can only be entry or exit Pseudostates, and they must have different names. They can only be defined for composite States."
	self connectionPoints
		removeAll;
		addAll: aPseudostate