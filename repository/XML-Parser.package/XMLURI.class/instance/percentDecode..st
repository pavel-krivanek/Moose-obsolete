private
percentDecode: aString
	| readStream writeStream |

	(aString includes: $%)
		ifFalse: [^ aString].

	readStream := aString readStream.
	writeStream := (String new: aString size) writeStream.
	[readStream atEnd]
		whileFalse: [
			readStream peek == $%
				ifTrue: [
					self
						percentDecodeNextFrom: readStream
						on: writeStream]
				ifFalse: [writeStream nextPut: readStream next]].
	^ writeStream contents.