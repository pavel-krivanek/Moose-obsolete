*Famix-File
containerFiles
	^ self correspondingFile ifNil: [ {} ] ifNotNil: [ :file | {file} ]