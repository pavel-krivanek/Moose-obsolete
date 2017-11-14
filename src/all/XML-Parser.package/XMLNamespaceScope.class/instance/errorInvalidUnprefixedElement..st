private
errorInvalidUnprefixedElement: anElement
	XMLNamespaceException
		formatSignal: 'Unprefixed element <{1}> contains ":" character'
		with: anElement