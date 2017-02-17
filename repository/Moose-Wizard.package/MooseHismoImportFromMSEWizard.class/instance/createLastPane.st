creating
createLastPane
	
	self wizardPanes size >= 3
		 ifTrue: [ self removePaneAt: 3 ].
		
	versions := ((selectedDirectory entries select: [ :each | each name endsWith: '.mse' ]) collect: [ :each | each basename -> each fullName ]) asDictionary.

	(selectedImporting = #manually) 
		ifTrue: [self createManualImportingPane]
		ifFalse: [self createAutomaticImportingPane]