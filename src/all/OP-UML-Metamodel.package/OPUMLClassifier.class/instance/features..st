accessing
features: aFeature
	"Specifies each Feature directly defined in the classifier. Note that there may be members of the Classifier that are of the type Feature but are not included, e.g., inherited features."
	self features
		removeAll;
		addAll: aFeature