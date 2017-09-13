accessing
isAbstract
	"If true, the Classifier can only be instantiated by instantiating one of its specializations. An abstract Classifier is intended to be used by other Classifiers e.g., as the target of Associations or Generalizations."
	^ isAbstract ifNil: [ isAbstract := false ]