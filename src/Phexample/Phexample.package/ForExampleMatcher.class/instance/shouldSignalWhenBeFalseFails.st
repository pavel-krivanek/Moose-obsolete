examples-expecting-boolean
shouldSignalWhenBeFalseFails
	[ Set new isEmpty should beFalse ] should
		signal: TestFailure
		withMessageText: 'expected #isEmpty to be false'