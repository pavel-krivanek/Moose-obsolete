private
errorUndeclaredGeneralEntityReference: aName
	XMLWellFormednessException
		formatSignal: 'Undeclared general entity reference &{1};'
		with: aName