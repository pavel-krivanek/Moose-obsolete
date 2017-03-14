public - useful snippet
loadPeterFileDialog
	"
	self new loadPeterFileDialog
	"

	Metacello new
	    baseline: 'FileDialog';
	    repository: 'github://peteruhnak/file-dialog/repository';
	    load.
	(Smalltalk at: #FDMorphicUIManager) new beDefault