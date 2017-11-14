private
errorUnmappedPrefix: aPrefix inAttribute: anAttribute
	XMLNamespaceException
		formatSignal: 'Unmapped namespace prefix "{1}" in "{2}" attribute'
		with: aPrefix
		with: anAttribute