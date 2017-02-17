accessing - wizard management
formatBlock

	^ formatBlock ifNil: [formatBlock := [:option | option ]]