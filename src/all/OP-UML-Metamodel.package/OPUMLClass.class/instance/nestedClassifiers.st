accessing
nestedClassifiers
	"The Classifiers owned by the Class that are not ownedBehaviors."
	^ nestedClassifiers ifNil: [ nestedClassifiers := OrderedCollection new ]