accessing
specific: aClassifier
	"The specializing Classifier in the Generalization relationship."
	specific := OPUMLToOneLink
		on: self identity
		update: #generalizations
		from: specific
		to: aClassifier