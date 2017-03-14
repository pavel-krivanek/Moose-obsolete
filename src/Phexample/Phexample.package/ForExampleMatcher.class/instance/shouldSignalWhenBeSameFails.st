examples-expecting
shouldSignalWhenBeSameFails
	[ 'string' copy should beSameAs: 'string' copy ] 
		should signal: TestFailure 
		withMessageText: 'expected ''string'' but got ''string'' (using ==)'