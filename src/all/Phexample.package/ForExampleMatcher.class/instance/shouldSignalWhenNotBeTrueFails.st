examples-expecting-boolean
shouldSignalWhenNotBeTrueFails
	[ Set new isEmpty should not beTrue ] should
		signal: SpecOfFailed
		withMessageText: 'did not expect #isEmpty to be true'