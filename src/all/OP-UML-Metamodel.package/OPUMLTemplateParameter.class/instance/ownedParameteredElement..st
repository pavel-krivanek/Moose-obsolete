accessing
ownedParameteredElement: aParameterableElement
	"The ParameterableElement that is owned by this TemplateParameter for the purpose of exposing it as the parameteredElement."
	|anOldOwnedParameteredElement|
	anOldOwnedParameteredElement := ownedParameteredElement.
	ownedParameteredElement := aParameterableElement.
	OPUMLToOneLink
		on: self identity
		thisSelector: #ownedParameteredElement
		otherSelector: #owningTemplateParameter
		from: anOldOwnedParameteredElement
		to: ownedParameteredElement