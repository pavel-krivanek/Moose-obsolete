private
writeLineBreak
	self writer atBeginning
		ifFalse: [
			self writer nextPutAll: self writer lineBreak.
			(self currentIndentLevel > 0
				and: [self indentString notEmpty])
				ifTrue: [self writeIndent]]