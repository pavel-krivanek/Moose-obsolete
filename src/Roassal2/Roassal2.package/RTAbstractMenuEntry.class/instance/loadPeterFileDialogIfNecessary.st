public - useful snippet
loadPeterFileDialogIfNecessary
	"
	self new loadPeterFileDialogIfNecessary
	"
	(Smalltalk includesKey: #FDOpenFileDialog) ifFalse: [
		Metacello new
		    baseline: 'FileDialog';
		    repository: 'github://peteruhnak/file-dialog/repository';
		    load ].
"	(Smalltalk at: #FDMorphicUIManager) new beDefault"