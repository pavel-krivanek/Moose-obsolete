private
errorDuplicateListValue: aValue
	XMLValidationException
		formatSignal: 'Duplicate value "{1}" in list'
		with: aValue