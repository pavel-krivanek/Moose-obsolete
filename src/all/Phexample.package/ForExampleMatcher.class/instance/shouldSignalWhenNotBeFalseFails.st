examples-expecting-boolean
shouldSignalWhenNotBeFalseFails
	[ (Set with: 42) isEmpty should not beFalse ] should
		signal: SpecOfFailed
		withMessageText: 'did not expect #isEmpty to be false'