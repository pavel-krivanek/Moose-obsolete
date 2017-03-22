examples-expecting-boolean
shouldContainNameOfBooleanPropertyInMessageTextWhenFailing
	[ nil notNil should beTrue ] should
		signal: SpecOfFailed
		withMessageText: 'expected #notNil to be true'