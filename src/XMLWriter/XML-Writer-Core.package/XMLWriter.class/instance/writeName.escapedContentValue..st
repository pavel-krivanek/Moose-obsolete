private
writeName: aName escapedContentValue: aValue
	self
		writeName: aName;
		nextPut: $=;
		writeEscapedContentString: aValue