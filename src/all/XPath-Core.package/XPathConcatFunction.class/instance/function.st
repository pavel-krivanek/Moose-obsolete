invoking
function
	| writeStream |

	writeStream := (String new: self totalArguments * 10) writeStream.
	self argumentsDo: [:each |
		writeStream nextPutAll: each].
	^ writeStream contents.