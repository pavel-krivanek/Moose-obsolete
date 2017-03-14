signalling
signalMessageFrom: anException
	^ self
		formatSignal: '({1}) {2}'
		with: anException class name
		with: anException messageText