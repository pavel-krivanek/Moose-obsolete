accessing
boundElement: aTemplateableElement
	"The TemplateableElement that is bound by this TemplateBinding."
	boundElement := OPUMLToOneLink
		on: self identity
		update: #templateBindings
		from: boundElement
		to: aTemplateableElement