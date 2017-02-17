*Moose-Finder
importFromMSE
	| stream |
	stream := UITheme builder fileOpen: 'Import model from MSE file' extensions: #('mse').
	stream
		ifNotNil: [ 
			self name: (stream localName copyUpToLast: Path extensionDelimiter).	"name without extension"
			self importFromMSEStream: stream.
			stream close ]