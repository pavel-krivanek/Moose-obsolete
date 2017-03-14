creation
createEndOfLineParser 
	^ [ :context | 
		(context atEnd or: [ context peek = Character cr ])
			ifFalse: [ PPFailure message: '$ not expected' context: context  ] ] asParser