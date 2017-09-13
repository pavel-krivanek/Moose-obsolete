accessing
template: aTemplateableElement
	"The TemplateableElement that owns this TemplateSignature."
	|anOldTemplate|
	anOldTemplate := template.
	template := aTemplateableElement.
	OPUMLToOneLink
		on: self identity
		thisSelector: #template
		otherSelector: #ownedTemplateSignature
		from: anOldTemplate
		to: template