examples-expecting-boolean
shouldHandlePathologicCaseOfBooleanPropertyWhenFailing
	[ nil should beTrue ] should
		signal: SpecOfFailed
		withMessageText: 'expected #<unknown> to be true'