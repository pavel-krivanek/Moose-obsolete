tests
testFormatMessageWithWithWith
	| exception |

	exception := self newException.
	self assert:
		(exception
			formatMessage: '{1} {2} {3}'
			with: 'one'
			with: 2
			with: 'three') == exception.
	self assert: exception messageText = 'one 2 three'.