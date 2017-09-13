accessing
features
	"Specifies each Feature directly defined in the classifier. Note that there may be members of the Classifier that are of the type Feature but are not included, e.g., inherited features."
	^ features ifNil: [ features := OPUMLToManyLinks on: self identity opposite: #featuringClassifier: ]