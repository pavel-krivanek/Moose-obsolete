accessing
realizingClassifiers
	"The Classifiers that are involved in the implementation of the Component that owns this Realization."
	^ realizingClassifiers ifNil: [ realizingClassifiers := OrderedCollection new ]