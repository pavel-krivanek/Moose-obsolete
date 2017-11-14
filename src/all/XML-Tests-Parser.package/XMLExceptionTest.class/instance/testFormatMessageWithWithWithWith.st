tests
testFormatMessageWithWithWithWith
	| exception |

	exception := self newException.
	self assert:
		(exception
			formatMessage: '{1} {2} {3} {4}'
			with: 'one'
			with: 2
			with: 'three'
			with: 4) == exception.
	self assert: exception messageText = 'one 2 three 4'.