accessing
allowSubstitutable
	"Constrains the required relationship between an actual parameter and the parameteredElement for this formal parameter."
	^ allowSubstitutable ifNil: [ allowSubstitutable := true ]