tests
testFormatSignalWithWith
	(Array
		with: self exceptionClass
		with: self newException)
		do: [:each | | raisedException |
			[each
				formatSignal: '{1} {2}'
				with: 1
				with: 'two']
				on: Error
				do: [:exception | raisedException := exception].
			self
				assert: raisedException notNil;
				assert: raisedException class == self exceptionClass;
				assert: raisedException messageText = '1 two']