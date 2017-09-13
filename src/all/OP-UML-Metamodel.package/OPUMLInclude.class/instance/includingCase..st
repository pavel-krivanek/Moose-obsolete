accessing
includingCase: anUseCase
	"The UseCase which includes the addition and owns the Include relationship."
	includingCase := OPUMLToOneLink
		on: self identity
		update: #includes
		from: includingCase
		to: anUseCase