accessing
parameteredElement: aConnectableElement
	"The ConnectableElement for this ConnectableElementTemplateParameter."
	|anOldParameteredElement|
	anOldParameteredElement := parameteredElement.
	parameteredElement := aConnectableElement.
	OPUMLToOneLink
		on: self identity
		thisSelector: #parameteredElement
		otherSelector: #templateParameter
		from: anOldParameteredElement
		to: parameteredElement