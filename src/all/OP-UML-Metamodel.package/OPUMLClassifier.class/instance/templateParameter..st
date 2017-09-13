accessing
templateParameter: aClassifierTemplateParameter
	"TheClassifierTemplateParameter that exposes this element as a formal parameter."
	|anOldTemplateParameter|
	anOldTemplateParameter := templateParameter.
	templateParameter := aClassifierTemplateParameter.
	OPUMLToOneLink
		on: self identity
		thisSelector: #templateParameter
		otherSelector: #parameteredElement
		from: anOldTemplateParameter
		to: templateParameter