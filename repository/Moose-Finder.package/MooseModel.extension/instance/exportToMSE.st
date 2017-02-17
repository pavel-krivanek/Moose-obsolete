*Moose-Finder
exportToMSE
	<menuItem: 'Export model to MSE' category: 'Import / Export'>
	| fileReference |
	fileReference := UITheme builder fileSave: 'Your title here' extensions: #('mse') path: nil.
	fileReference
		ifNotNil: [ 
			fileReference
				writeStreamDo: [ :stream | 
					self exportToMSEStream: stream.
					Notification signal: 'Save successful!' ] ]