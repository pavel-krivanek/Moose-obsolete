private
percentDecodeNextFrom: aReadStream on: aWriteStream
	| readStreamAdapter |

	readStreamAdapter := XMLPercentDecodingReadStreamAdapter on: aReadStream.
	[readStreamAdapter atEnd]
		whileFalse: [aWriteStream nextPut: readStreamAdapter next].