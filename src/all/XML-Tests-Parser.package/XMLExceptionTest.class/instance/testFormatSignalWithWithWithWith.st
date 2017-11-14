tests
testFormatSignalWithWithWithWith
	(Array
		with: self exceptionClass
		with: self newException)
		do: [:each | | raisedException |
			[each
				formatSignal: '{1} {2} {3} {4}'
				with: 1
				with: 'two'
				with: 3
				with: 'four']
				on: Error
				do: [:exception | raisedException := exception].
			self
				assert: raisedException notNil;
				assert: raisedException class == self exceptionClass;
				assert: raisedException messageText = '1 two 3 four']