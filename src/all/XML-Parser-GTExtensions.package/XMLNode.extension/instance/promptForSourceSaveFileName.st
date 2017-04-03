*XML-Parser-GTExtensions
promptForSourceSaveFileName
	^ (UITheme builder
		fileSave: 'Save XML source to file'
		extensions:
			"'xml' must come first so it's the default extension"
			((XMLFileHandle xmlDocumentFileExtensions asArray copyWithout: 'xml')
				copyWithFirst: 'xml'))
			ifNil: ['']
			ifNotNil: [:reference | reference fullName]