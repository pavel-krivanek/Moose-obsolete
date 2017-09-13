accessing
useCases: anUseCase
	"The set of UseCases for which this Classifier is the subject."
	self useCases
		removeAll;
		addAll: anUseCase