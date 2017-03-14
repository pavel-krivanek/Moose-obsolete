examples-expecting-string
shouldSignalWhenBeginsWithFails
	[ 'abcdef' should beginWith: 'abcX' ] should 
		signal: TestFailure 
		withMessageText: 'expected ''abcX'' but got ''abcdef'' (using beginsWith:)' 