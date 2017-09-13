accessing
setting
	"True: when the Continuation is at the end of the enclosing InteractionFragment and False when it is in the beginning."
	^ setting ifNil: [ setting := true ]