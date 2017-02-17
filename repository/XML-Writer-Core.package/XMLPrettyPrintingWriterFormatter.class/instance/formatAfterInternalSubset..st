formatting
formatAfterInternalSubset: aDoctypeDeclarationWriter
	aDoctypeDeclarationWriter hasEmbeddedMarkup
		ifTrue: [
			self
				outdent;
				writeLineBreak]