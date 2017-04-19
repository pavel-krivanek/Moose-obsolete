converting
asString
	"Returns the full, untruncated URI string, unlike #printString, which
	may truncate"

	^ self uriString
		ifNil: [| writeStream |
			writeStream := (String new: 64) writeStream.
			self
				printSchemeOn: writeStream;
				printAuthorityPrefixOn: writeStream;
				printAuthorityOn: writeStream;
				printPathPrefixOn: writeStream;
				printPathOn: writeStream;
				printQueryOn: writeStream;
				printFragmentOn: writeStream;
				uriString: writeStream contents;
				uriString]