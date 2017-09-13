accessing
coveredBies: anInteractionFragment
	"References the InteractionFragments in which this Lifeline takes part."
	self coveredBies
		removeAll;
		addAll: anInteractionFragment