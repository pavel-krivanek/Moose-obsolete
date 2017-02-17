examples-expecting-error
shouldSignalWithMessage
	
	[ 5 should equal: 6 ] should 
		signal: TestFailure
		withMessageText: 'expected 6 but got 5 (using =)'