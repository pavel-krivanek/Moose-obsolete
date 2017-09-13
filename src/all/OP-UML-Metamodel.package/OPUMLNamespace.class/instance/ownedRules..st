accessing
ownedRules: aConstraint
	"Specifies a set of Constraints owned by this Namespace."
	self ownedRules
		removeAll;
		addAll: aConstraint