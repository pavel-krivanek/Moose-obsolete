writing
writeLineBreak
	self writer atBeginning
		ifFalse: [
			self writer nextPutAll: self writer lineBreak.
			(self currentIndentLevel > 0
				and: [self indentString size > 0])
				ifTrue: [self writeIndent]]