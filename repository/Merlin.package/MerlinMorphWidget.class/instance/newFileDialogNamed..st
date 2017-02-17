utils - morph creation
newFileDialogNamed: title

"Answer a morph representing a file open dialog with the given title"

	|tmpFileDialog|
	tmpFileDialog := FileDialogWindow basicNew
		initialize;
		title: title;
		answerOpenFile.
	"exts ifNotNil: [fd validExtensions: exts].
	path ifNotNil: [fd selectPathName: path]."
	tmpFileDialog answerOpenFile .
	^ tmpFileDialog
	