accessing
methods: aBehavior
	"A Behavior that implements the BehavioralFeature. There may be at most one Behavior for a particular pairing of a Classifier (as owner of the Behavior) and a BehavioralFeature (as specification of the Behavior)."
	self methods
		removeAll;
		addAll: aBehavior