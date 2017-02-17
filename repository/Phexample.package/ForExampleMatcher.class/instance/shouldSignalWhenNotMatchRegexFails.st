examples-expecting-string
shouldSignalWhenNotMatchRegexFails
	[ 'aaa' should not matchRegex: 'a*' ] should 
		signal: TestFailure 
		withMessageText: 'expected not to get ''a*'' but got ''aaa'' (using matchesRegex:)'