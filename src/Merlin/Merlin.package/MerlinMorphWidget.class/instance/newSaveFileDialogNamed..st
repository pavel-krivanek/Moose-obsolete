utils - morph creation
newSaveFileDialogNamed: title

	"Answer a morph representing a save file dialog with the given title"

	|tmpFileDialog|
	tmpFileDialog := FileDialogWindow basicNew
		initialize;
		title: title;
		answerSaveFile.
	tmpFileDialog answerSaveFile.
	^ tmpFileDialog
	