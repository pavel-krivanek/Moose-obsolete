accessing
fragments: anInteractionFragment
	"The ordered set of fragments in the Interaction."
	self fragments
		removeAll;
		addAll: anInteractionFragment