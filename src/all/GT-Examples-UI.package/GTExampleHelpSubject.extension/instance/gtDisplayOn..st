*GT-Examples-UI
gtDisplayOn: aStream
	self exists 
		ifTrue: [ self topic gtDisplayOn: aStream ]
		ifFalse: [ 
			self bookName gtDisplayOn: aStream.
			self title isEmptyOrNil ifFalse: [ 
				aStream nextPutAll: ' > '.
				self title gtDisplayOn: aStream ] ].
	self gtDisplayValidityOn: aStream