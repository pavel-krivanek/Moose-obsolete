accessing
parentFolder
	"lazy initialization to reduce memory foot print if possible"
	<MSEProperty: #parentFolder type: #FAMIXFolder opposite: #childrenFileSystemEntities>
	<MSEComment: 'folder containing a file'>
	^ self privateState attributeAt: #parentFolder ifAbsent: [ nil ]