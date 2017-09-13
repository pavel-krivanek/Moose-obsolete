accessing
interface: anInterface
	"The Interface that owns this Operation, if any."
	interface := OPUMLToOneLink
		on: self identity
		update: #ownedOperations
		from: interface
		to: anInterface