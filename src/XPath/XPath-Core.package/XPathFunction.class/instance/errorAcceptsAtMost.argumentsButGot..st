private
errorAcceptsAtMost: anArgumentMaximum argumentsButGot: anArgumentTotal
	XPathArgumentNumberException
		formatSignal: '{1}() accepts at most {2} argument(s) but was called with {3}'
		with: self name
		with: anArgumentMaximum
		with: anArgumentTotal