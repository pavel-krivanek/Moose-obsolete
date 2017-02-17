private
writePrologue
	self writer
		formatBeforeStartTag: self;
		nextPut: $<