indent-dedent
indent
	^ (((emptyLine, newline) star, align, ((#blank asParser plus) flatten)
	
	map: [ :emptylines :_align :_indent |
		_indent
	]) and pushAsParser)
		"JK: Hackish, because of imperfect push-pop analysis"
		propertyAt: #indentPush put: true;
		yourself

	