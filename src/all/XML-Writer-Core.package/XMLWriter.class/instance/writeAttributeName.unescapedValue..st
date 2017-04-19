private
writeAttributeName: aName unescapedValue: aValue
	self
		space;
		writeStringName: aName;
		nextPut: $=;
		writeUnescapedString: aValue