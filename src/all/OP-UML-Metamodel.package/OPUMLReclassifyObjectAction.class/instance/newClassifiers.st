accessing
newClassifiers
	"A set of Classifiers to be added to the Classifiers of the given object."
	^ newClassifiers ifNil: [ newClassifiers := OrderedCollection new ]