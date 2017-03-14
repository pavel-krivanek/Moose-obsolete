private
percentAndPlusDecode: aString
	| readStream writeStream |

	((aString includes: $%)
		or: [aString includes: $+])
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
				ifFalse: [| nextChar |
					(nextChar := readStream next) == $+
						ifTrue: [writeStream nextPut: Character space]
						ifFalse: [writeStream nextPut: nextChar]]].
	^ writeStream contents.