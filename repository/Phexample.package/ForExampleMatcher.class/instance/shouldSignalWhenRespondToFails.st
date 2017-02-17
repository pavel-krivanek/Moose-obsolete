examples-expecting-reflection
shouldSignalWhenRespondToFails
	[ Object new should respondTo: #zork ] should
		signal: TestFailure
		withMessageText: 'expected an Object to respond to #zork (using respondsTo:)' 