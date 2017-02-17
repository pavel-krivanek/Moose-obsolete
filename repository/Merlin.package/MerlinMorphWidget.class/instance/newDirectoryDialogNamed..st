utils - morph creation
newDirectoryDialogNamed: title

	"Answer a morph representing a directory open dialog with the given title"

	|tmpFileDialog|
	tmpFileDialog := FileDialogWindow basicNew
		initialize;
		title: title;
		answerDirectory.
	tmpFileDialog answerDirectory.
	^ tmpFileDialog
	