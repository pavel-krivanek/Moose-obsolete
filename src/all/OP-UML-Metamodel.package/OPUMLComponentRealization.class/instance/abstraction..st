accessing
abstraction: aComponent
	"The Component that owns this ComponentRealization and which is implemented by its realizing Classifiers."
	abstraction := OPUMLToOneLink
		on: self identity
		update: #realizations
		from: abstraction
		to: aComponent