accessing
generalizations: aGeneralization
	"The Generalization relationships for this Classifier. These Generalizations navigate to more general Classifiers in the generalization hierarchy."
	self generalizations
		removeAll;
		addAll: aGeneralization