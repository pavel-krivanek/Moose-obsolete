tests
testFormatSignalWithArguments
	(Array
		with: self exceptionClass
		with: self newException)
		do: [:each | | raisedException |
			[each
				formatSignal: '{1} {2} {3} {4}'
				withArguments: #(1 'two' 3 'four')]
				on: Error
				do: [:exception | raisedException := exception].
			self
				assert: raisedException notNil;
				assert: raisedException class == self exceptionClass;
				assert: raisedException messageText = '1 two 3 four']