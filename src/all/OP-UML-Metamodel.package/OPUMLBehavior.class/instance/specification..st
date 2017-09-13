accessing
specification: aBehavioralFeature
	"Designates a BehavioralFeature that the Behavior implements. The BehavioralFeature must be owned by the BehavioredClassifier that owns the Behavior or be inherited by it. The Parameters of the BehavioralFeature and the implementing Behavior must match. A Behavior does not need to have a specification, in which case it either is the classifierBehavior of a BehavioredClassifier or it can only be invoked by another Behavior of the Classifier."
	specification := OPUMLToOneLink
		on: self identity
		update: #methods
		from: specification
		to: aBehavioralFeature