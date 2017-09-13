accessing
descriptionAccessor: aSymbol
	^ MAPluggableAccessor
		read: [ :me | set perform: aSymbol ]
		write: [ :me :newValue | 
			set perform: (aSymbol , ':') asSymbol with: newValue.
			controller diagramElement ifNotNil: [ controller refreshFigure ] ]