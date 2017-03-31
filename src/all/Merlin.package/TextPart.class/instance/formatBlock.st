accessing
formatBlock
	^ formatBlock ifNil: [formatBlock := [:option | option ]]