accessing
nestedClassifiers
	"References all the Classifiers that are defined (nested) within the Interface."
	^ nestedClassifiers ifNil: [ nestedClassifiers := OrderedCollection new ]