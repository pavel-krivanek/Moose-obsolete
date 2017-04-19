private
writeAttributeName: aName value: aValue
	self
		space;
		writeStringName: aName;
		nextPut: $=;
		writeEscapedContentString: aValue