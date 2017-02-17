private
writeEscapedContentString: aString
	self
		nextPut: $";
		formatBeforeQuotedStringValue: aString;
		write: aString escapedWith: contentStringEscapes;
		formatAfterQuotedStringValue: aString;
		nextPut: $"