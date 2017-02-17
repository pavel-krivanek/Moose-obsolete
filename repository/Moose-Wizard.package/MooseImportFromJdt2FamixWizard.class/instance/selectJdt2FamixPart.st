accessing
selectJdt2FamixPart

	|tmpDefaultPath|
	tmpDefaultPath := FileSystem disk workingDirectory.
	(self jdt2famixPath asFileReference / 'jdt2famix.sh') exists
			ifTrue: [ tmpDefaultPath := self jdt2famixPath asFileReference / 'jdt2famix.sh' ].
	^ ChooseFilePart new 
		selectedPathName: tmpDefaultPath fullName;
		validExtensions: #('sh'); yourself.