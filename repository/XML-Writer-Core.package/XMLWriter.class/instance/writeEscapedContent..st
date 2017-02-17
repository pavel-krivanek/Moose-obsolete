private
writeEscapedContent: aString
	self
		write: aString
		escapedWith: contentEscapes