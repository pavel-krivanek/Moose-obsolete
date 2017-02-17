private
errorUndeclaredPrefix: aPrefix
	XPathUndeclaredPrefixException
		formatSignal: 'Prefix "{1}" was not declared in the XPath context'
		with: aPrefix