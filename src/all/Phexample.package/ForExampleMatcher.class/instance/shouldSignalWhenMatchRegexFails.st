examples-expecting-string
shouldSignalWhenMatchRegexFails
	[ 'aaa' should matchRegex: 'ba*' ] should 
		signal: TestFailure 
		withMessageText: 'expected ''ba*'' but got ''aaa'' (using matchesRegex:)'