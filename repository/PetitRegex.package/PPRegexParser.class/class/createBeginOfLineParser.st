creation
createBeginOfLineParser
	^ [ :context | 
		(context position = 0 or: [ (context skip: -1; next) = Character cr ])
			ifFalse: [ PPFailure message: '^ not expected' context: context ] ] asParser.