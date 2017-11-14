tests
testFormatMessageWithArguments
	| exception |

	exception := self newException.
	self assert:
		(exception
			formatMessage: '{1} {2} {3} {4}'
			withArguments: #('one' 2 'three' 4)) == exception.
	self assert: exception messageText = 'one 2 three 4'.