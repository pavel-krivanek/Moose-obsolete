*petitgui
findStreamContents
	^ (self findStream ifNotNil: [ :s | s contents ]) ifNil: [ '' ]