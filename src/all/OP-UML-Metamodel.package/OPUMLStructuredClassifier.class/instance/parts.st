accessing
parts
	"The Properties specifying instances that the StructuredClassifier owns by composition. This collection is derived, selecting those owned Properties where isComposite is true."
	^ parts ifNil: [ parts := OrderedCollection new ]