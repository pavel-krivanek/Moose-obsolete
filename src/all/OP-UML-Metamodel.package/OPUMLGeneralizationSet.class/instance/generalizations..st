accessing
generalizations: aGeneralization
	"Designates the instances of Generalization that are members of this GeneralizationSet."
	self generalizations
		removeAll;
		addAll: aGeneralization