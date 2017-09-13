accessing
interfaceRealizations: anInterfaceRealization
	"The set of InterfaceRealizations owned by the BehavioredClassifier. Interface realizations reference the Interfaces of which the BehavioredClassifier is an implementation."
	self interfaceRealizations
		removeAll;
		addAll: anInterfaceRealization