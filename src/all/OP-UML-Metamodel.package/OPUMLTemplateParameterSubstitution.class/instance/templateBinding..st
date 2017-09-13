accessing
templateBinding: aTemplateBinding
	"The TemplateBinding that owns this TemplateParameterSubstitution."
	templateBinding := OPUMLToOneLink
		on: self identity
		update: #parameterSubstitutions
		from: templateBinding
		to: aTemplateBinding