*petitgui
findStream
	
	stream ifNil: [ ^ parent ifNotNil: [ parent findStream ] ].
	^ stream