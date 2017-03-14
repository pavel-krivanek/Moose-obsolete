printing
printOn: aStream
	self uriString
		ifNil: [| writeStream |
			writeStream := (String new: 64) writeStream.
			self
				printSchemeOn: writeStream;
				printAuthorityPrefixOn: writeStream;
				printAuthorityOn: writeStream;
				printPathPrefixOn: writeStream;
				printPathOn: writeStream;
				printQueryOn: writeStream;
				printFragmentOn: writeStream.
			self uriString: writeStream contents].
	aStream nextPutAll: self uriString.