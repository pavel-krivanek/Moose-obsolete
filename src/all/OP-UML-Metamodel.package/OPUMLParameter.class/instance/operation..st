accessing
operation: anOperation
	"The Operation owning this parameter."
	operation := OPUMLToOneLink
		on: self identity
		update: #ownedParameters
		from: operation
		to: anOperation