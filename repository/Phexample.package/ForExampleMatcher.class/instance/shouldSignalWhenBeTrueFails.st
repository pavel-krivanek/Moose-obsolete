examples-expecting-boolean
shouldSignalWhenBeTrueFails
	[ (Set with: 42) isEmpty should beTrue ] should
		signal: TestFailure
		withMessageText: 'expected #isEmpty to be true'