accessing
covereds: aLifeline
	"References the Lifelines that the InteractionFragment involves."
	self covereds
		removeAll;
		addAll: aLifeline