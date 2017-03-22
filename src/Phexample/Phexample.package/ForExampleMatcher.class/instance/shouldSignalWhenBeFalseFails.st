examples-expecting-boolean
shouldSignalWhenBeFalseFails
	[ Set new isEmpty should beFalse ] should
		signal: SpecOfFailed
		withMessageText: 'expected #isEmpty to be false'