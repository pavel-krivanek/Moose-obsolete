accessing
templateParameter: aConnectableElementTemplateParameter
	"The ConnectableElementTemplateParameter for this ConnectableElement parameter."
	|anOldTemplateParameter|
	anOldTemplateParameter := templateParameter.
	templateParameter := aConnectableElementTemplateParameter.
	OPUMLToOneLink
		on: self identity
		thisSelector: #templateParameter
		otherSelector: #parameteredElement
		from: anOldTemplateParameter
		to: templateParameter