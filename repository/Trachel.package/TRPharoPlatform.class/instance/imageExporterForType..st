public
imageExporterForType: imageType
	^ (imageType = #JPEG or: imageType = #JPG)
		ifTrue: [ PluginBasedJPEGReadWriter ]
		ifFalse: [ Smalltalk at: (imageType, 'ReadWriter') asSymbol ]