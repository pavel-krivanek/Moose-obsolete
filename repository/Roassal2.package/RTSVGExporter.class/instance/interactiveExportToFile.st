exporting
interactiveExportToFile

	| fileStream fileRef |
	
	fileRef := TRPlatform current 
		dialogRequestSaveFilename: 'Export as SVG'
		extensions: #('svg')
		path: nil.
		
	fileRef ifNil: [ TRPlatform current inform: 'Saving cancelled'. ^ self ].
	
	fileStream := fileRef writeStream.
	[ self exportOnStream: fileStream ] 
		ensure: [ fileStream notNil ifTrue: [ fileStream close ] ]