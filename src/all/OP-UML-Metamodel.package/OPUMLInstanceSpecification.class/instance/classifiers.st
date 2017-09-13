accessing
classifiers
	"The Classifier or Classifiers of the represented instance. If multiple Classifiers are specified, the instance is classified by all of them."
	^ classifiers ifNil: [ classifiers := OrderedCollection new ]