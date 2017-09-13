accessing
oldClassifiers
	"A set of Classifiers to be removed from the Classifiers of the given object."
	^ oldClassifiers ifNil: [ oldClassifiers := OrderedCollection new ]