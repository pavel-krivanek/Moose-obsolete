accessing
implementingClassifier: aBehavioredClassifier
	"References the BehavioredClassifier that owns this InterfaceRealization, i.e., the BehavioredClassifier that realizes the Interface to which it refers."
	implementingClassifier := OPUMLToOneLink
		on: self identity
		update: #interfaceRealizations
		from: implementingClassifier
		to: aBehavioredClassifier