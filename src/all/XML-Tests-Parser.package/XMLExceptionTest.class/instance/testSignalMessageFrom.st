tests
testSignalMessageFrom
	| otherException |

	otherException := self newOtherExceptionWithErrorMessage.
	(Array
		with: self exceptionClass
		with: self newException)
		do: [:each | | raisedException |
			[each signalMessageFrom: otherException]
				on: Error
				do: [:exception | raisedException := exception].
			self
				assert: raisedException notNil;
				assert: raisedException class == self exceptionClass;
				assert:
					raisedException messageText =
						('({1}) {2}' format:
							(Array
								with: self otherExceptionClass name
								with: self errorMessage))].