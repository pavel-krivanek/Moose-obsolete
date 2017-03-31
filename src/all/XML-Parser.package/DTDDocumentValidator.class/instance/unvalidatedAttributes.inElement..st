validating
unvalidatedAttributes: anAttributeCollection inElement: anElement
	XMLValidationException
		formatSignal: 'Undeclared attribute "{1}" in element <{2}>'
		with: anAttributeCollection anyOne
		with: anElement