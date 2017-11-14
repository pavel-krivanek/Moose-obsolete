tests
testFormatMessageWith
	| exception |

	exception := self newException.
	self assert:
		(exception
			formatMessage: '{1}'
			with: 'one') == exception.
	self assert: exception messageText = 'one'.