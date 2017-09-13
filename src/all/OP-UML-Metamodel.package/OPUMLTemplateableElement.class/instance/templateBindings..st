accessing
templateBindings: aTemplateBinding
	"The optional TemplateBindings from this TemplateableElement to one or more templates."
	self templateBindings
		removeAll;
		addAll: aTemplateBinding