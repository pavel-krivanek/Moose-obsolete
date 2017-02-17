copying
copy: aString replacingMatchesWith: replacementString
	| writeStream |
	writeStream := (String new: 40) writeStream.
	self copyStream: aString to: writeStream replacingMatchesWith: replacementString.
	^ writeStream contents