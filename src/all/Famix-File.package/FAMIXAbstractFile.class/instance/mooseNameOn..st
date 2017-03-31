printing
mooseNameOn: aStream

	| parent |
	parent := self belongsTo.
	parent ifNotNil: [ 
		parent mooseNameOn: aStream.
		aStream nextPutAll: self class famixFolderSeparatorString].
	self name ifNotNil: [ aStream nextPutAll: self name ].