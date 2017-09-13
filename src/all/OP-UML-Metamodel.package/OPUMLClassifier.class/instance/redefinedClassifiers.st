accessing
redefinedClassifiers
	"The Classifiers redefined by this Classifier."
	^ redefinedClassifiers ifNil: [ redefinedClassifiers := OrderedCollection new ]