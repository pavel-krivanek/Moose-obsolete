private
errorInvalidUnprefixedAttribute: anAttribute
	XMLNamespaceException
		formatSignal: 'Unprefixed attribute "{1}" contains ":" character'
		with: anAttribute