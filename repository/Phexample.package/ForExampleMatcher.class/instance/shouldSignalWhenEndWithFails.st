examples-expecting-string
shouldSignalWhenEndWithFails
	[ 'abcdef' should endWith: 'Xdef' ] should 
		signal: TestFailure 
		withMessageText: 'expected ''Xdef'' but got ''abcdef'' (using endsWith:)' 