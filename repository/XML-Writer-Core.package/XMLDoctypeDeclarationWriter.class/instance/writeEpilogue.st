private
writeEpilogue
	self isOmittable
		ifTrue: [^ self].

	self hasEmbeddedMarkup
		ifTrue: [
			self writer
				formatAfterInternalSubset: self;
				nextPut: $]].

	self writer
		nextPut: $>;
		formatAfterDoctypeDeclaration: self.