*Famix-File
containerFiles
	^ self allFiles collect: #correspondingFile thenReject: #isNil