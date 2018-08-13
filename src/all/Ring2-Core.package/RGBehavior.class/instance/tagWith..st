accessing - backend
tagWith: aSymbol 

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior tagClass: self with: aSymbol.
		self package addClassTag: aSymbol.
	].
	