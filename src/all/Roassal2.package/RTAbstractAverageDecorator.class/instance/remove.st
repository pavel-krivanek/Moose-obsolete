accessing
remove
	[ shapes isNotEmpty ]
		whileTrue: [ shapes first view ifNotNil: [ shapes first remove ].
			shapes removeFirst ].
	builder view signalUpdate