accessing
interface: anInterface
	"The Interface that owns this Property, if any."
	interface := OPUMLToOneLink
		on: self identity
		update: #ownedAttributes
		from: interface
		to: anInterface