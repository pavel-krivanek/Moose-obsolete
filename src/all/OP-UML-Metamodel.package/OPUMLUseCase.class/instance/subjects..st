accessing
subjects: aClassifier
	"The subjects to which this UseCase applies. Each subject or its parts realize all the UseCases that apply to it."
	self subjects
		removeAll;
		addAll: aClassifier