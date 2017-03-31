private
writeEmbeddedMarkupPrologue
	self writer
		nextPut: $>;
		formatAfterStartTag: self