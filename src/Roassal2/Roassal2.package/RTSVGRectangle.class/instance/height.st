accessing
height
	height ifNil: [ height := self box height round: 2 ].
	^ height