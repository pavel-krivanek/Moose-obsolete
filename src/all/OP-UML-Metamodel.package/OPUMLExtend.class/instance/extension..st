accessing
extension: anUseCase
	"The UseCase that represents the extension and owns the Extend relationship."
	extension := OPUMLToOneLink
		on: self identity
		update: #extends
		from: extension
		to: anUseCase