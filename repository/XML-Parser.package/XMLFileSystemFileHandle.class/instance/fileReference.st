accessing
fileReference
	^ fileReference ifNil: [fileReference := self path asFileReference]