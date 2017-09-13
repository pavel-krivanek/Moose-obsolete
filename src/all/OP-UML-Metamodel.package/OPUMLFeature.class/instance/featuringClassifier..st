accessing
featuringClassifier: aClassifier
	"The Classifiers that have this Feature as a feature."
	featuringClassifier := OPUMLToOneLink
		on: self identity
		update: #features
		from: featuringClassifier
		to: aClassifier