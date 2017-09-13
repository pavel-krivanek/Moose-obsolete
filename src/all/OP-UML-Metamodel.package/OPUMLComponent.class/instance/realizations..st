accessing
realizations: aComponentRealization
	"The set of Realizations owned by the Component. Realizations reference the Classifiers of which the Component is an abstraction; i.e., that realize its behavior."
	self realizations
		removeAll;
		addAll: aComponentRealization