accessing
enclosingOperand: anInteractionOperand
	"The operand enclosing this InteractionFragment (they may nest recursively)."
	enclosingOperand := OPUMLToOneLink
		on: self identity
		update: #fragments
		from: enclosingOperand
		to: anInteractionOperand