examples-expecting
shouldSignalWhenBeSameFails
	[ 'string' copy should beSameAs: 'string' copy ] 
		should signal: SpecOfFailed 
		withMessageText: 'expected ''string'' but got ''string'' (using ==)'