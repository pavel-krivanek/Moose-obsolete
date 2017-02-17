test-paragraph
testLazyParagraphPrefix
	self parse: '' rule: #lazyParagraphPrefix.
	
	context := PPContext new.
	context indentStack push: quote.
	self parse: '> ' rule: #lazyParagraphPrefix.
	
	context := PPContext new.
	context indentStack push: quote.
	self fail: '>  >' rule: #lazyParagraphPrefix.
	
	context := PPContext new.
	context indentStack push: quote.
	context indentStack push: quote.
	self parse: ' >       >' rule: #lazyParagraphPrefix.

