accessing
interactionOperator
	"Specifies the operation which defines the semantics of this combination of InteractionFragments."
	^ interactionOperator ifNil: [ interactionOperator := OPUMLInteractionOperatorKind new seq ]