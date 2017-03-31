private
writeEmbeddedMarkupPrologue
	self isOmittable
		ifFalse: [
			self writer
				space;
				nextPut: $[;
				formatBeforeInternalSubset: self]