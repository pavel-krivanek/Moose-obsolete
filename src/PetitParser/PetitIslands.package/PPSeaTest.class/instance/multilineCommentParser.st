tests - water objects
multilineCommentParser
	^ '/*' asParser, (#any asParser starLazy: '*/' asParser), '*/' asParser.