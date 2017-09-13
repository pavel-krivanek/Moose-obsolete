accessing
parameterSubstitutions: aTemplateParameterSubstitution
	"The TemplateParameterSubstitutions owned by this TemplateBinding."
	self parameterSubstitutions
		removeAll;
		addAll: aTemplateParameterSubstitution