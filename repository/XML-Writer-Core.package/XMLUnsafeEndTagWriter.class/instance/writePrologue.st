private
writePrologue
	self writer
		formatBeforeEndTag: self;
		nextPut: $<;
		nextPut: $/