examples-expecting-boolean
shouldContainNameOfBooleanPropertyInMessageTextWhenFailing
	[ nil notNil should beTrue ] should
		signal: TestFailure
		withMessageText: 'expected #notNil to be true'