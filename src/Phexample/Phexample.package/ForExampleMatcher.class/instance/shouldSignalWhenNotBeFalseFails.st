examples-expecting-boolean
shouldSignalWhenNotBeFalseFails
	[ (Set with: 42) isEmpty should not beFalse ] should
		signal: TestFailure
		withMessageText: 'did not expect #isEmpty to be false'