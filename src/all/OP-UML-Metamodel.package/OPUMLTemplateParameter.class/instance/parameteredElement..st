accessing
parameteredElement: aParameterableElement
	"The ParameterableElement exposed by this TemplateParameter."
	|anOldParameteredElement|
	anOldParameteredElement := parameteredElement.
	parameteredElement := aParameterableElement.
	OPUMLToOneLink
		on: self identity
		thisSelector: #parameteredElement
		otherSelector: #templateParameter
		from: anOldParameteredElement
		to: parameteredElement