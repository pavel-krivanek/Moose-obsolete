accessing
generalizationSets: aGeneralizationSet
	"Represents a set of instances of Generalization.  A Generalization may appear in many GeneralizationSets."
	self generalizationSets
		removeAll;
		addAll: aGeneralizationSet