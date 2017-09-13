accessing
ownedParameters: aTemplateParameter
	"The formal parameters that are owned by this TemplateSignature."
	self ownedParameters
		removeAll;
		addAll: aTemplateParameter