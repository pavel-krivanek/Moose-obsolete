accessing
substitutions: aSubstitution
	"The Substitutions owned by this Classifier."
	self substitutions
		removeAll;
		addAll: aSubstitution