examples-expecting-error
shouldSignalWhenSignalWithMessageTextFails
	[ [ self error: 'foo' ] should 
		signal: Error 
		withMessageText: 'bar' ] on: SpecOfFailed
		do: [ :ex | 
			ex messageText should equal: 'expected ''bar'' but got ''foo'' (using =)' ]