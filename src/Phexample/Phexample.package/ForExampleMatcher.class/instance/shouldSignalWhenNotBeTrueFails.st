examples-expecting-boolean
shouldSignalWhenNotBeTrueFails
	[ Set new isEmpty should not beTrue ] should
		signal: TestFailure
		withMessageText: 'did not expect #isEmpty to be true'