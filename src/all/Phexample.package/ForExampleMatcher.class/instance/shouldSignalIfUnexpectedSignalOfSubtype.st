examples-expecting-error
shouldSignalIfUnexpectedSignalOfSubtype

	[ [ 5 should equal: 6] should not signal: TestFailure ] should 
		signal: SpecOfFailed
		withMessageText:  'Should not raise TestFailure but did'