accessing
interaction: anInteraction
	"References the Interaction enclosing this Lifeline."
	interaction := OPUMLToOneLink
		on: self identity
		update: #lifelines
		from: interaction
		to: anInteraction