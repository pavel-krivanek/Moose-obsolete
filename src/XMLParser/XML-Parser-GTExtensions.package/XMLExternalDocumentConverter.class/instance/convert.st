converting
convert
	^ self
		detectEncoding;
		nextXMLDeclaration;
		skipToEnd;
		close;
		contents