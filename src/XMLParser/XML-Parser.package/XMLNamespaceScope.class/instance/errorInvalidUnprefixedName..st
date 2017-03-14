private
errorInvalidUnprefixedName: aName
	XMLNamespaceException
		formatSignal: 'Name "{1}" contains ":" character'
		with: aName