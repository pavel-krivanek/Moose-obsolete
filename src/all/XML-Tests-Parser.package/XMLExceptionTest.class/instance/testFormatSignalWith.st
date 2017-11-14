tests
testFormatSignalWith
	(Array
		with: self exceptionClass
		with: self newException)
		do: [:each | | raisedException |
			[each
				formatSignal: '{1}'
				with: 1]
				on: Error
				do: [:exception | raisedException := exception].
			self
				assert: raisedException notNil;
				assert: raisedException class == self exceptionClass;
				assert: raisedException messageText = '1']