accessing
selectedFile
	^ (self pane port: #selection) value ifNil: [ self result filename ]