private
errorRequiresAtLeast: anArgumentMinimum argumentsButGot: anArgumentTotal
	XPathArgumentNumberException
		formatSignal:
			'{1}() requires at least {2} argument(s) but was called with {3}'
		with: self name
		with: anArgumentMinimum
		with: anArgumentTotal