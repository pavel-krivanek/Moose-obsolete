*petitgui
debugResult
	context ifNil: [ ^ nil ].
	context root ifNil: [ ^ nil ].
	
	^ context root enableDebug parse: context stream reset