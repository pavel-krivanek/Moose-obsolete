examples-expecting-reflection
shouldSignalWhenRespondToFails
	[ Object new should respondTo: #zork ] should
		signal: SpecOfFailed
		withMessageText: 'expected an Object to respond to #zork (using respondsTo:)' 