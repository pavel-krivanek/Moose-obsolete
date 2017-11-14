accessing
inheritMessageFrom: anException
	self
		formatMessage: '({1}) {2}'
		with: anException class name
		with: anException messageText