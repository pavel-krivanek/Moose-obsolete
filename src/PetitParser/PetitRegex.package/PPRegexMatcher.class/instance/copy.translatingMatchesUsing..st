copying
copy: aString translatingMatchesUsing: aBlock
	| writeStream |
	writeStream := (String new: 40) writeStream.
	self copyStream: aString to: writeStream translatingMatchesUsing: aBlock.
	^ writeStream contents