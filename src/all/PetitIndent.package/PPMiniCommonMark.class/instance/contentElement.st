document
contentElement
	^ 	
		ATXHeader /
		code /
		quoteBlock /
		list /
		paragraph /
		((emptyLine, lineEnd) ==> #first)