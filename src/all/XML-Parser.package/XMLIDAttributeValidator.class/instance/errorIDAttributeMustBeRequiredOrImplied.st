private
errorIDAttributeMustBeRequiredOrImplied
	XMLValidationException
		formatSignal:
			'Attribute "{1}" of element <{2}> is of ID type and must ',
			'be declared #REQUIRED or #IMPLIED'
		with: self attribute
		with: self element