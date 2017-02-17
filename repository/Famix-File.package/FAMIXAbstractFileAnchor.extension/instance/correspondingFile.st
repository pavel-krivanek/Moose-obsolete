*Famix-File
correspondingFile
	"file pointed to by this source anchor, ideally this value should never be nil for file-based systems"
	<MSEProperty: #correspondingFile type: #FAMIXFile>
	<MSEComment: 'File associated to this source anchor'>
	^ self privateState attributeAt: #correspondingFile ifAbsent: [ nil ]