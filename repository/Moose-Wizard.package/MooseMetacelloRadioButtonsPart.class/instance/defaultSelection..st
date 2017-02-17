accessing
defaultSelection: aSymbol

	aSymbol = #branchDev
		ifTrue: [ self beBranchDev ]
		ifFalse: [ self beMainDev ]