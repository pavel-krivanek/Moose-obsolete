examples-expecting-boolean
shouldHandlePathologicCaseOfBooleanPropertyWhenFailing
	[ nil should beTrue ] should
		signal: TestFailure
		withMessageText: 'expected #<unknown> to be true'