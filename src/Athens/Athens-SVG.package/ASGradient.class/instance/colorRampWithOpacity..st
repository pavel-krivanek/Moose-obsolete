operations
colorRampWithOpacity: aFloat 
	
	(stops isNil or: [stops  isEmpty ]) ifTrue: [
		self xlink_href ifNotNil: [:link |
			^ link colorRampWithOpacity: aFloat
			].
		^ #().
		].
	
	^ stops collect: [:ea | ea asRampColorWithOpacity: aFloat]
