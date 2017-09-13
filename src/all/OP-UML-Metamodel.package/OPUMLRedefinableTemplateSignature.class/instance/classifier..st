accessing
classifier: aClassifier
	"The Classifier that owns this RedefinableTemplateSignature."
	|anOldClassifier|
	anOldClassifier := classifier.
	classifier := aClassifier.
	OPUMLToOneLink
		on: self identity
		thisSelector: #classifier
		otherSelector: #ownedTemplateSignature
		from: anOldClassifier
		to: classifier