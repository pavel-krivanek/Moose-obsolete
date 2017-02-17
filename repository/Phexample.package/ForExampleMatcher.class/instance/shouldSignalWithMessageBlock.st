examples-expecting-error
shouldSignalWithMessageBlock
	
	[ self error: 'test error' ] should 
		signal: Error
		withMessageText: [ :m | 
			m should beKindOf: String.
			m isEmpty should not be: true.
			m should equal: 'test error'.
		]