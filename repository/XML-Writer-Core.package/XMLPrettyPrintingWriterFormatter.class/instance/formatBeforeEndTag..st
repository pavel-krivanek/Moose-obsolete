formatting
formatBeforeEndTag: aTagWriter
	aTagWriter hasEmbeddedMarkup
		ifTrue: [
			self outdent.
			aTagWriter hasEmbeddedStringMarkup
				ifFalse: [self writeLineBreak]]