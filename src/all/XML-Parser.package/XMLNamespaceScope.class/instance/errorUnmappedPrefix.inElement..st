private
errorUnmappedPrefix: aPrefix inElement: anElement
	XMLNamespaceException
		formatSignal: 'Unmapped namespace prefix "{1}" in <{2}> element'
		with: aPrefix
		with: anElement