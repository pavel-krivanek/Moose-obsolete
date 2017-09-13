accessing
enclosingInteraction: anInteraction
	"The Interaction enclosing this InteractionFragment."
	enclosingInteraction := OPUMLToOneLink
		on: self identity
		update: #fragments
		from: enclosingInteraction
		to: anInteraction