private
writeName: aName unescapedValue: aValue
	self
		writeName: aName;
		nextPut: $=;
		writeUnescapedString: aValue