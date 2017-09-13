accessing
descriptionAccessor: aSymbol
	^ MAPluggableAccessor
		read: [ :me | (reader value: me) perform: aSymbol ]
		write: [ :me :newValue | 
			(reader value: me) perform: (aSymbol , ':') asSymbol with: newValue.
			me ifNotNil: [ me refreshFigure ] ]