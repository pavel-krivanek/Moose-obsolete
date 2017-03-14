private
writeEscapedEntityValueString: aString
	self
		nextPut: $";
		formatBeforeQuotedStringValue: aString;
		write: aString escapedWith: EntityValueEscapes;
		formatAfterQuotedStringValue: aString;
		nextPut: $"