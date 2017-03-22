examples-expecting-boolean
shouldSignalWhenBeTrueFails
	[ (Set with: 42) isEmpty should beTrue ] should
		signal: SpecOfFailed
		withMessageText: 'expected #isEmpty to be true'