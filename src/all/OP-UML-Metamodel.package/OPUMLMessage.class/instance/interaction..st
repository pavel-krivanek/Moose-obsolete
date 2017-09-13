accessing
interaction: anInteraction
	"The enclosing Interaction owning the Message."
	interaction := OPUMLToOneLink
		on: self identity
		update: #messages
		from: interaction
		to: anInteraction