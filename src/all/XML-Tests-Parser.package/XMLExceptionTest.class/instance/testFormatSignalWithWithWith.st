tests
testFormatSignalWithWithWith
	(Array
		with: self exceptionClass
		with: self newException)
		do: [:each | | raisedException |
			[each
				formatSignal: '{1} {2} {3}'
				with: 1
				with: 'two'
				with: 3]
				on: Error
				do: [:exception | raisedException := exception].
			self
				assert: raisedException notNil;
				assert: raisedException class == self exceptionClass;
				assert: raisedException messageText = '1 two 3']